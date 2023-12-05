import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({ name: 'producto' })
export class ProductosEntity {

  @PrimaryGeneratedColumn()
  id: number;

  @Column({ type: 'varchar', length: 50, nullable: false, })
  nombre: string;

  @Column({ type: 'float', nullable: false })
  precio: number;

  @Column({ type: 'varchar', length: 200, nullable: false,})
  descripcion: string;
}
