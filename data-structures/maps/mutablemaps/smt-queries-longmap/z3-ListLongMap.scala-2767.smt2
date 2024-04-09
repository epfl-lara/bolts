; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40464 () Bool)

(assert start!40464)

(declare-fun b!445043 () Bool)

(declare-fun res!264115 () Bool)

(declare-fun e!261634 () Bool)

(assert (=> b!445043 (=> (not res!264115) (not e!261634))))

(declare-datatypes ((array!27451 0))(
  ( (array!27452 (arr!13170 (Array (_ BitVec 32) (_ BitVec 64))) (size!13522 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27451)

(declare-datatypes ((List!7859 0))(
  ( (Nil!7856) (Cons!7855 (h!8711 (_ BitVec 64)) (t!13625 List!7859)) )
))
(declare-fun arrayNoDuplicates!0 (array!27451 (_ BitVec 32) List!7859) Bool)

(assert (=> b!445043 (= res!264115 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7856))))

(declare-fun b!445044 () Bool)

(declare-fun res!264109 () Bool)

(assert (=> b!445044 (=> (not res!264109) (not e!261634))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445044 (= res!264109 (validKeyInArray!0 k0!794))))

(declare-fun b!445045 () Bool)

(declare-fun e!261635 () Bool)

(declare-fun tp_is_empty!11841 () Bool)

(assert (=> b!445045 (= e!261635 tp_is_empty!11841)))

(declare-fun res!264114 () Bool)

(assert (=> start!40464 (=> (not res!264114) (not e!261634))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40464 (= res!264114 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13522 _keys!709))))))

(assert (=> start!40464 e!261634))

(assert (=> start!40464 true))

(declare-datatypes ((V!16893 0))(
  ( (V!16894 (val!5965 Int)) )
))
(declare-datatypes ((ValueCell!5577 0))(
  ( (ValueCellFull!5577 (v!8212 V!16893)) (EmptyCell!5577) )
))
(declare-datatypes ((array!27453 0))(
  ( (array!27454 (arr!13171 (Array (_ BitVec 32) ValueCell!5577)) (size!13523 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27453)

(declare-fun e!261639 () Bool)

(declare-fun array_inv!9540 (array!27453) Bool)

(assert (=> start!40464 (and (array_inv!9540 _values!549) e!261639)))

(declare-fun array_inv!9541 (array!27451) Bool)

(assert (=> start!40464 (array_inv!9541 _keys!709)))

(declare-fun mapNonEmpty!19389 () Bool)

(declare-fun mapRes!19389 () Bool)

(declare-fun tp!37371 () Bool)

(declare-fun e!261638 () Bool)

(assert (=> mapNonEmpty!19389 (= mapRes!19389 (and tp!37371 e!261638))))

(declare-fun mapValue!19389 () ValueCell!5577)

(declare-fun mapKey!19389 () (_ BitVec 32))

(declare-fun mapRest!19389 () (Array (_ BitVec 32) ValueCell!5577))

(assert (=> mapNonEmpty!19389 (= (arr!13171 _values!549) (store mapRest!19389 mapKey!19389 mapValue!19389))))

(declare-fun b!445046 () Bool)

(declare-fun res!264108 () Bool)

(assert (=> b!445046 (=> (not res!264108) (not e!261634))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!445046 (= res!264108 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13522 _keys!709))))))

(declare-fun b!445047 () Bool)

(assert (=> b!445047 (= e!261638 tp_is_empty!11841)))

(declare-fun b!445048 () Bool)

(declare-fun res!264111 () Bool)

(assert (=> b!445048 (=> (not res!264111) (not e!261634))))

(declare-fun arrayContainsKey!0 (array!27451 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445048 (= res!264111 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19389 () Bool)

(assert (=> mapIsEmpty!19389 mapRes!19389))

(declare-fun b!445049 () Bool)

(declare-fun e!261637 () Bool)

(assert (=> b!445049 (= e!261637 false)))

(declare-fun lt!203576 () Bool)

(declare-fun lt!203577 () array!27451)

(assert (=> b!445049 (= lt!203576 (arrayNoDuplicates!0 lt!203577 #b00000000000000000000000000000000 Nil!7856))))

(declare-fun b!445050 () Bool)

(assert (=> b!445050 (= e!261639 (and e!261635 mapRes!19389))))

(declare-fun condMapEmpty!19389 () Bool)

(declare-fun mapDefault!19389 () ValueCell!5577)

(assert (=> b!445050 (= condMapEmpty!19389 (= (arr!13171 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5577)) mapDefault!19389)))))

(declare-fun b!445051 () Bool)

(declare-fun res!264113 () Bool)

(assert (=> b!445051 (=> (not res!264113) (not e!261634))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27451 (_ BitVec 32)) Bool)

(assert (=> b!445051 (= res!264113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!445052 () Bool)

(declare-fun res!264106 () Bool)

(assert (=> b!445052 (=> (not res!264106) (not e!261634))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!445052 (= res!264106 (and (= (size!13523 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13522 _keys!709) (size!13523 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445053 () Bool)

(declare-fun res!264110 () Bool)

(assert (=> b!445053 (=> (not res!264110) (not e!261634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!445053 (= res!264110 (validMask!0 mask!1025))))

(declare-fun b!445054 () Bool)

(assert (=> b!445054 (= e!261634 e!261637)))

(declare-fun res!264107 () Bool)

(assert (=> b!445054 (=> (not res!264107) (not e!261637))))

(assert (=> b!445054 (= res!264107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203577 mask!1025))))

(assert (=> b!445054 (= lt!203577 (array!27452 (store (arr!13170 _keys!709) i!563 k0!794) (size!13522 _keys!709)))))

(declare-fun b!445055 () Bool)

(declare-fun res!264112 () Bool)

(assert (=> b!445055 (=> (not res!264112) (not e!261634))))

(assert (=> b!445055 (= res!264112 (or (= (select (arr!13170 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13170 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!40464 res!264114) b!445053))

(assert (= (and b!445053 res!264110) b!445052))

(assert (= (and b!445052 res!264106) b!445051))

(assert (= (and b!445051 res!264113) b!445043))

(assert (= (and b!445043 res!264115) b!445046))

(assert (= (and b!445046 res!264108) b!445044))

(assert (= (and b!445044 res!264109) b!445055))

(assert (= (and b!445055 res!264112) b!445048))

(assert (= (and b!445048 res!264111) b!445054))

(assert (= (and b!445054 res!264107) b!445049))

(assert (= (and b!445050 condMapEmpty!19389) mapIsEmpty!19389))

(assert (= (and b!445050 (not condMapEmpty!19389)) mapNonEmpty!19389))

(get-info :version)

(assert (= (and mapNonEmpty!19389 ((_ is ValueCellFull!5577) mapValue!19389)) b!445047))

(assert (= (and b!445050 ((_ is ValueCellFull!5577) mapDefault!19389)) b!445045))

(assert (= start!40464 b!445050))

(declare-fun m!430655 () Bool)

(assert (=> mapNonEmpty!19389 m!430655))

(declare-fun m!430657 () Bool)

(assert (=> b!445044 m!430657))

(declare-fun m!430659 () Bool)

(assert (=> b!445054 m!430659))

(declare-fun m!430661 () Bool)

(assert (=> b!445054 m!430661))

(declare-fun m!430663 () Bool)

(assert (=> b!445055 m!430663))

(declare-fun m!430665 () Bool)

(assert (=> start!40464 m!430665))

(declare-fun m!430667 () Bool)

(assert (=> start!40464 m!430667))

(declare-fun m!430669 () Bool)

(assert (=> b!445053 m!430669))

(declare-fun m!430671 () Bool)

(assert (=> b!445051 m!430671))

(declare-fun m!430673 () Bool)

(assert (=> b!445049 m!430673))

(declare-fun m!430675 () Bool)

(assert (=> b!445043 m!430675))

(declare-fun m!430677 () Bool)

(assert (=> b!445048 m!430677))

(check-sat (not b!445051) (not b!445048) (not b!445049) (not b!445044) (not b!445054) (not start!40464) (not b!445053) (not mapNonEmpty!19389) (not b!445043) tp_is_empty!11841)
(check-sat)
