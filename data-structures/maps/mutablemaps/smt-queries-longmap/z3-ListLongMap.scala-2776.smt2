; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40538 () Bool)

(assert start!40538)

(declare-fun b!446424 () Bool)

(declare-fun res!265076 () Bool)

(declare-fun e!262261 () Bool)

(assert (=> b!446424 (=> (not res!265076) (not e!262261))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446424 (= res!265076 (validMask!0 mask!1025))))

(declare-fun b!446425 () Bool)

(declare-fun res!265075 () Bool)

(assert (=> b!446425 (=> (not res!265075) (not e!262261))))

(declare-datatypes ((array!27557 0))(
  ( (array!27558 (arr!13222 (Array (_ BitVec 32) (_ BitVec 64))) (size!13574 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27557)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16965 0))(
  ( (V!16966 (val!5992 Int)) )
))
(declare-datatypes ((ValueCell!5604 0))(
  ( (ValueCellFull!5604 (v!8243 V!16965)) (EmptyCell!5604) )
))
(declare-datatypes ((array!27559 0))(
  ( (array!27560 (arr!13223 (Array (_ BitVec 32) ValueCell!5604)) (size!13575 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27559)

(assert (=> b!446425 (= res!265075 (and (= (size!13575 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13574 _keys!709) (size!13575 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!446426 () Bool)

(declare-fun e!262256 () Bool)

(declare-fun tp_is_empty!11895 () Bool)

(assert (=> b!446426 (= e!262256 tp_is_empty!11895)))

(declare-fun b!446427 () Bool)

(declare-fun res!265077 () Bool)

(assert (=> b!446427 (=> (not res!265077) (not e!262261))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!446427 (= res!265077 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19473 () Bool)

(declare-fun mapRes!19473 () Bool)

(declare-fun tp!37500 () Bool)

(assert (=> mapNonEmpty!19473 (= mapRes!19473 (and tp!37500 e!262256))))

(declare-fun mapValue!19473 () ValueCell!5604)

(declare-fun mapRest!19473 () (Array (_ BitVec 32) ValueCell!5604))

(declare-fun mapKey!19473 () (_ BitVec 32))

(assert (=> mapNonEmpty!19473 (= (arr!13223 _values!549) (store mapRest!19473 mapKey!19473 mapValue!19473))))

(declare-fun b!446428 () Bool)

(declare-fun e!262258 () Bool)

(assert (=> b!446428 (= e!262261 e!262258)))

(declare-fun res!265074 () Bool)

(assert (=> b!446428 (=> (not res!265074) (not e!262258))))

(declare-fun lt!203799 () array!27557)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27557 (_ BitVec 32)) Bool)

(assert (=> b!446428 (= res!265074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203799 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446428 (= lt!203799 (array!27558 (store (arr!13222 _keys!709) i!563 k0!794) (size!13574 _keys!709)))))

(declare-fun b!446430 () Bool)

(declare-fun res!265083 () Bool)

(assert (=> b!446430 (=> (not res!265083) (not e!262261))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!446430 (= res!265083 (validKeyInArray!0 k0!794))))

(declare-fun b!446431 () Bool)

(declare-fun e!262259 () Bool)

(assert (=> b!446431 (= e!262259 tp_is_empty!11895)))

(declare-fun b!446432 () Bool)

(assert (=> b!446432 (= e!262258 false)))

(declare-fun lt!203798 () Bool)

(declare-datatypes ((List!7892 0))(
  ( (Nil!7889) (Cons!7888 (h!8744 (_ BitVec 64)) (t!13660 List!7892)) )
))
(declare-fun arrayNoDuplicates!0 (array!27557 (_ BitVec 32) List!7892) Bool)

(assert (=> b!446432 (= lt!203798 (arrayNoDuplicates!0 lt!203799 #b00000000000000000000000000000000 Nil!7889))))

(declare-fun b!446433 () Bool)

(declare-fun res!265078 () Bool)

(assert (=> b!446433 (=> (not res!265078) (not e!262261))))

(assert (=> b!446433 (= res!265078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!446434 () Bool)

(declare-fun res!265080 () Bool)

(assert (=> b!446434 (=> (not res!265080) (not e!262261))))

(assert (=> b!446434 (= res!265080 (or (= (select (arr!13222 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13222 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446435 () Bool)

(declare-fun res!265082 () Bool)

(assert (=> b!446435 (=> (not res!265082) (not e!262261))))

(assert (=> b!446435 (= res!265082 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7889))))

(declare-fun b!446429 () Bool)

(declare-fun e!262257 () Bool)

(assert (=> b!446429 (= e!262257 (and e!262259 mapRes!19473))))

(declare-fun condMapEmpty!19473 () Bool)

(declare-fun mapDefault!19473 () ValueCell!5604)

(assert (=> b!446429 (= condMapEmpty!19473 (= (arr!13223 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5604)) mapDefault!19473)))))

(declare-fun res!265081 () Bool)

(assert (=> start!40538 (=> (not res!265081) (not e!262261))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40538 (= res!265081 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13574 _keys!709))))))

(assert (=> start!40538 e!262261))

(assert (=> start!40538 true))

(declare-fun array_inv!9574 (array!27559) Bool)

(assert (=> start!40538 (and (array_inv!9574 _values!549) e!262257)))

(declare-fun array_inv!9575 (array!27557) Bool)

(assert (=> start!40538 (array_inv!9575 _keys!709)))

(declare-fun b!446436 () Bool)

(declare-fun res!265079 () Bool)

(assert (=> b!446436 (=> (not res!265079) (not e!262261))))

(assert (=> b!446436 (= res!265079 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13574 _keys!709))))))

(declare-fun mapIsEmpty!19473 () Bool)

(assert (=> mapIsEmpty!19473 mapRes!19473))

(assert (= (and start!40538 res!265081) b!446424))

(assert (= (and b!446424 res!265076) b!446425))

(assert (= (and b!446425 res!265075) b!446433))

(assert (= (and b!446433 res!265078) b!446435))

(assert (= (and b!446435 res!265082) b!446436))

(assert (= (and b!446436 res!265079) b!446430))

(assert (= (and b!446430 res!265083) b!446434))

(assert (= (and b!446434 res!265080) b!446427))

(assert (= (and b!446427 res!265077) b!446428))

(assert (= (and b!446428 res!265074) b!446432))

(assert (= (and b!446429 condMapEmpty!19473) mapIsEmpty!19473))

(assert (= (and b!446429 (not condMapEmpty!19473)) mapNonEmpty!19473))

(get-info :version)

(assert (= (and mapNonEmpty!19473 ((_ is ValueCellFull!5604) mapValue!19473)) b!446426))

(assert (= (and b!446429 ((_ is ValueCellFull!5604) mapDefault!19473)) b!446431))

(assert (= start!40538 b!446429))

(declare-fun m!431635 () Bool)

(assert (=> b!446430 m!431635))

(declare-fun m!431637 () Bool)

(assert (=> b!446432 m!431637))

(declare-fun m!431639 () Bool)

(assert (=> start!40538 m!431639))

(declare-fun m!431641 () Bool)

(assert (=> start!40538 m!431641))

(declare-fun m!431643 () Bool)

(assert (=> b!446427 m!431643))

(declare-fun m!431645 () Bool)

(assert (=> mapNonEmpty!19473 m!431645))

(declare-fun m!431647 () Bool)

(assert (=> b!446428 m!431647))

(declare-fun m!431649 () Bool)

(assert (=> b!446428 m!431649))

(declare-fun m!431651 () Bool)

(assert (=> b!446424 m!431651))

(declare-fun m!431653 () Bool)

(assert (=> b!446435 m!431653))

(declare-fun m!431655 () Bool)

(assert (=> b!446433 m!431655))

(declare-fun m!431657 () Bool)

(assert (=> b!446434 m!431657))

(check-sat (not b!446428) (not b!446432) (not b!446430) (not b!446435) (not b!446424) tp_is_empty!11895 (not b!446433) (not mapNonEmpty!19473) (not b!446427) (not start!40538))
(check-sat)
