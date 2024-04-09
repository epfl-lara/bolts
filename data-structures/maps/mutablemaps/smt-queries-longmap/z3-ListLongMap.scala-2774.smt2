; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40526 () Bool)

(assert start!40526)

(declare-fun b!446190 () Bool)

(declare-fun res!264895 () Bool)

(declare-fun e!262149 () Bool)

(assert (=> b!446190 (=> (not res!264895) (not e!262149))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!446190 (= res!264895 (validKeyInArray!0 k0!794))))

(declare-fun b!446191 () Bool)

(declare-fun res!264896 () Bool)

(assert (=> b!446191 (=> (not res!264896) (not e!262149))))

(declare-datatypes ((array!27533 0))(
  ( (array!27534 (arr!13210 (Array (_ BitVec 32) (_ BitVec 64))) (size!13562 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27533)

(declare-fun arrayContainsKey!0 (array!27533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!446191 (= res!264896 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!446192 () Bool)

(declare-fun res!264899 () Bool)

(assert (=> b!446192 (=> (not res!264899) (not e!262149))))

(declare-datatypes ((List!7887 0))(
  ( (Nil!7884) (Cons!7883 (h!8739 (_ BitVec 64)) (t!13655 List!7887)) )
))
(declare-fun arrayNoDuplicates!0 (array!27533 (_ BitVec 32) List!7887) Bool)

(assert (=> b!446192 (= res!264899 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7884))))

(declare-fun b!446193 () Bool)

(declare-fun res!264900 () Bool)

(assert (=> b!446193 (=> (not res!264900) (not e!262149))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446193 (= res!264900 (or (= (select (arr!13210 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13210 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446194 () Bool)

(declare-fun res!264894 () Bool)

(assert (=> b!446194 (=> (not res!264894) (not e!262149))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446194 (= res!264894 (validMask!0 mask!1025))))

(declare-fun res!264902 () Bool)

(assert (=> start!40526 (=> (not res!264902) (not e!262149))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40526 (= res!264902 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13562 _keys!709))))))

(assert (=> start!40526 e!262149))

(assert (=> start!40526 true))

(declare-datatypes ((V!16949 0))(
  ( (V!16950 (val!5986 Int)) )
))
(declare-datatypes ((ValueCell!5598 0))(
  ( (ValueCellFull!5598 (v!8237 V!16949)) (EmptyCell!5598) )
))
(declare-datatypes ((array!27535 0))(
  ( (array!27536 (arr!13211 (Array (_ BitVec 32) ValueCell!5598)) (size!13563 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27535)

(declare-fun e!262153 () Bool)

(declare-fun array_inv!9568 (array!27535) Bool)

(assert (=> start!40526 (and (array_inv!9568 _values!549) e!262153)))

(declare-fun array_inv!9569 (array!27533) Bool)

(assert (=> start!40526 (array_inv!9569 _keys!709)))

(declare-fun b!446195 () Bool)

(declare-fun res!264901 () Bool)

(assert (=> b!446195 (=> (not res!264901) (not e!262149))))

(assert (=> b!446195 (= res!264901 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13562 _keys!709))))))

(declare-fun b!446196 () Bool)

(declare-fun e!262150 () Bool)

(declare-fun tp_is_empty!11883 () Bool)

(assert (=> b!446196 (= e!262150 tp_is_empty!11883)))

(declare-fun mapIsEmpty!19455 () Bool)

(declare-fun mapRes!19455 () Bool)

(assert (=> mapIsEmpty!19455 mapRes!19455))

(declare-fun mapNonEmpty!19455 () Bool)

(declare-fun tp!37482 () Bool)

(assert (=> mapNonEmpty!19455 (= mapRes!19455 (and tp!37482 e!262150))))

(declare-fun mapKey!19455 () (_ BitVec 32))

(declare-fun mapRest!19455 () (Array (_ BitVec 32) ValueCell!5598))

(declare-fun mapValue!19455 () ValueCell!5598)

(assert (=> mapNonEmpty!19455 (= (arr!13211 _values!549) (store mapRest!19455 mapKey!19455 mapValue!19455))))

(declare-fun b!446197 () Bool)

(declare-fun res!264898 () Bool)

(assert (=> b!446197 (=> (not res!264898) (not e!262149))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!446197 (= res!264898 (and (= (size!13563 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13562 _keys!709) (size!13563 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!446198 () Bool)

(declare-fun e!262148 () Bool)

(assert (=> b!446198 (= e!262153 (and e!262148 mapRes!19455))))

(declare-fun condMapEmpty!19455 () Bool)

(declare-fun mapDefault!19455 () ValueCell!5598)

(assert (=> b!446198 (= condMapEmpty!19455 (= (arr!13211 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5598)) mapDefault!19455)))))

(declare-fun b!446199 () Bool)

(assert (=> b!446199 (= e!262148 tp_is_empty!11883)))

(declare-fun b!446200 () Bool)

(declare-fun res!264897 () Bool)

(assert (=> b!446200 (=> (not res!264897) (not e!262149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27533 (_ BitVec 32)) Bool)

(assert (=> b!446200 (= res!264897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!446201 () Bool)

(declare-fun e!262152 () Bool)

(assert (=> b!446201 (= e!262149 e!262152)))

(declare-fun res!264903 () Bool)

(assert (=> b!446201 (=> (not res!264903) (not e!262152))))

(declare-fun lt!203763 () array!27533)

(assert (=> b!446201 (= res!264903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203763 mask!1025))))

(assert (=> b!446201 (= lt!203763 (array!27534 (store (arr!13210 _keys!709) i!563 k0!794) (size!13562 _keys!709)))))

(declare-fun b!446202 () Bool)

(assert (=> b!446202 (= e!262152 false)))

(declare-fun lt!203762 () Bool)

(assert (=> b!446202 (= lt!203762 (arrayNoDuplicates!0 lt!203763 #b00000000000000000000000000000000 Nil!7884))))

(assert (= (and start!40526 res!264902) b!446194))

(assert (= (and b!446194 res!264894) b!446197))

(assert (= (and b!446197 res!264898) b!446200))

(assert (= (and b!446200 res!264897) b!446192))

(assert (= (and b!446192 res!264899) b!446195))

(assert (= (and b!446195 res!264901) b!446190))

(assert (= (and b!446190 res!264895) b!446193))

(assert (= (and b!446193 res!264900) b!446191))

(assert (= (and b!446191 res!264896) b!446201))

(assert (= (and b!446201 res!264903) b!446202))

(assert (= (and b!446198 condMapEmpty!19455) mapIsEmpty!19455))

(assert (= (and b!446198 (not condMapEmpty!19455)) mapNonEmpty!19455))

(get-info :version)

(assert (= (and mapNonEmpty!19455 ((_ is ValueCellFull!5598) mapValue!19455)) b!446196))

(assert (= (and b!446198 ((_ is ValueCellFull!5598) mapDefault!19455)) b!446199))

(assert (= start!40526 b!446198))

(declare-fun m!431491 () Bool)

(assert (=> b!446192 m!431491))

(declare-fun m!431493 () Bool)

(assert (=> b!446201 m!431493))

(declare-fun m!431495 () Bool)

(assert (=> b!446201 m!431495))

(declare-fun m!431497 () Bool)

(assert (=> b!446191 m!431497))

(declare-fun m!431499 () Bool)

(assert (=> mapNonEmpty!19455 m!431499))

(declare-fun m!431501 () Bool)

(assert (=> b!446193 m!431501))

(declare-fun m!431503 () Bool)

(assert (=> b!446194 m!431503))

(declare-fun m!431505 () Bool)

(assert (=> b!446190 m!431505))

(declare-fun m!431507 () Bool)

(assert (=> start!40526 m!431507))

(declare-fun m!431509 () Bool)

(assert (=> start!40526 m!431509))

(declare-fun m!431511 () Bool)

(assert (=> b!446200 m!431511))

(declare-fun m!431513 () Bool)

(assert (=> b!446202 m!431513))

(check-sat (not mapNonEmpty!19455) (not b!446202) (not b!446191) (not start!40526) (not b!446200) (not b!446194) tp_is_empty!11883 (not b!446190) (not b!446192) (not b!446201))
(check-sat)
