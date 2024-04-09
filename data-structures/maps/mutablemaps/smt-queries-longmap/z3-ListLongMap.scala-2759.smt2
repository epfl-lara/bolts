; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40416 () Bool)

(assert start!40416)

(declare-fun b!444107 () Bool)

(declare-fun res!263386 () Bool)

(declare-fun e!261206 () Bool)

(assert (=> b!444107 (=> (not res!263386) (not e!261206))))

(declare-datatypes ((array!27359 0))(
  ( (array!27360 (arr!13124 (Array (_ BitVec 32) (_ BitVec 64))) (size!13476 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27359)

(declare-datatypes ((V!16829 0))(
  ( (V!16830 (val!5941 Int)) )
))
(declare-datatypes ((ValueCell!5553 0))(
  ( (ValueCellFull!5553 (v!8188 V!16829)) (EmptyCell!5553) )
))
(declare-datatypes ((array!27361 0))(
  ( (array!27362 (arr!13125 (Array (_ BitVec 32) ValueCell!5553)) (size!13477 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27361)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!444107 (= res!263386 (and (= (size!13477 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13476 _keys!709) (size!13477 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444108 () Bool)

(declare-fun e!261204 () Bool)

(assert (=> b!444108 (= e!261206 e!261204)))

(declare-fun res!263389 () Bool)

(assert (=> b!444108 (=> (not res!263389) (not e!261204))))

(declare-fun lt!203432 () array!27359)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27359 (_ BitVec 32)) Bool)

(assert (=> b!444108 (= res!263389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203432 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!444108 (= lt!203432 (array!27360 (store (arr!13124 _keys!709) i!563 k0!794) (size!13476 _keys!709)))))

(declare-fun b!444109 () Bool)

(declare-fun res!263394 () Bool)

(assert (=> b!444109 (=> (not res!263394) (not e!261206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444109 (= res!263394 (validKeyInArray!0 k0!794))))

(declare-fun b!444110 () Bool)

(declare-fun e!261202 () Bool)

(declare-fun tp_is_empty!11793 () Bool)

(assert (=> b!444110 (= e!261202 tp_is_empty!11793)))

(declare-fun b!444111 () Bool)

(declare-fun res!263393 () Bool)

(assert (=> b!444111 (=> (not res!263393) (not e!261206))))

(declare-datatypes ((List!7838 0))(
  ( (Nil!7835) (Cons!7834 (h!8690 (_ BitVec 64)) (t!13604 List!7838)) )
))
(declare-fun arrayNoDuplicates!0 (array!27359 (_ BitVec 32) List!7838) Bool)

(assert (=> b!444111 (= res!263393 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7835))))

(declare-fun res!263392 () Bool)

(assert (=> start!40416 (=> (not res!263392) (not e!261206))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40416 (= res!263392 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13476 _keys!709))))))

(assert (=> start!40416 e!261206))

(assert (=> start!40416 true))

(declare-fun e!261203 () Bool)

(declare-fun array_inv!9510 (array!27361) Bool)

(assert (=> start!40416 (and (array_inv!9510 _values!549) e!261203)))

(declare-fun array_inv!9511 (array!27359) Bool)

(assert (=> start!40416 (array_inv!9511 _keys!709)))

(declare-fun b!444112 () Bool)

(declare-fun res!263391 () Bool)

(assert (=> b!444112 (=> (not res!263391) (not e!261206))))

(assert (=> b!444112 (= res!263391 (or (= (select (arr!13124 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13124 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!444113 () Bool)

(declare-fun res!263390 () Bool)

(assert (=> b!444113 (=> (not res!263390) (not e!261206))))

(assert (=> b!444113 (= res!263390 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13476 _keys!709))))))

(declare-fun b!444114 () Bool)

(declare-fun res!263387 () Bool)

(assert (=> b!444114 (=> (not res!263387) (not e!261206))))

(declare-fun arrayContainsKey!0 (array!27359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444114 (= res!263387 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!444115 () Bool)

(assert (=> b!444115 (= e!261204 false)))

(declare-fun lt!203433 () Bool)

(assert (=> b!444115 (= lt!203433 (arrayNoDuplicates!0 lt!203432 #b00000000000000000000000000000000 Nil!7835))))

(declare-fun b!444116 () Bool)

(declare-fun e!261207 () Bool)

(declare-fun mapRes!19317 () Bool)

(assert (=> b!444116 (= e!261203 (and e!261207 mapRes!19317))))

(declare-fun condMapEmpty!19317 () Bool)

(declare-fun mapDefault!19317 () ValueCell!5553)

(assert (=> b!444116 (= condMapEmpty!19317 (= (arr!13125 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5553)) mapDefault!19317)))))

(declare-fun mapNonEmpty!19317 () Bool)

(declare-fun tp!37299 () Bool)

(assert (=> mapNonEmpty!19317 (= mapRes!19317 (and tp!37299 e!261202))))

(declare-fun mapRest!19317 () (Array (_ BitVec 32) ValueCell!5553))

(declare-fun mapKey!19317 () (_ BitVec 32))

(declare-fun mapValue!19317 () ValueCell!5553)

(assert (=> mapNonEmpty!19317 (= (arr!13125 _values!549) (store mapRest!19317 mapKey!19317 mapValue!19317))))

(declare-fun b!444117 () Bool)

(declare-fun res!263395 () Bool)

(assert (=> b!444117 (=> (not res!263395) (not e!261206))))

(assert (=> b!444117 (= res!263395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19317 () Bool)

(assert (=> mapIsEmpty!19317 mapRes!19317))

(declare-fun b!444118 () Bool)

(declare-fun res!263388 () Bool)

(assert (=> b!444118 (=> (not res!263388) (not e!261206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444118 (= res!263388 (validMask!0 mask!1025))))

(declare-fun b!444119 () Bool)

(assert (=> b!444119 (= e!261207 tp_is_empty!11793)))

(assert (= (and start!40416 res!263392) b!444118))

(assert (= (and b!444118 res!263388) b!444107))

(assert (= (and b!444107 res!263386) b!444117))

(assert (= (and b!444117 res!263395) b!444111))

(assert (= (and b!444111 res!263393) b!444113))

(assert (= (and b!444113 res!263390) b!444109))

(assert (= (and b!444109 res!263394) b!444112))

(assert (= (and b!444112 res!263391) b!444114))

(assert (= (and b!444114 res!263387) b!444108))

(assert (= (and b!444108 res!263389) b!444115))

(assert (= (and b!444116 condMapEmpty!19317) mapIsEmpty!19317))

(assert (= (and b!444116 (not condMapEmpty!19317)) mapNonEmpty!19317))

(get-info :version)

(assert (= (and mapNonEmpty!19317 ((_ is ValueCellFull!5553) mapValue!19317)) b!444110))

(assert (= (and b!444116 ((_ is ValueCellFull!5553) mapDefault!19317)) b!444119))

(assert (= start!40416 b!444116))

(declare-fun m!430079 () Bool)

(assert (=> mapNonEmpty!19317 m!430079))

(declare-fun m!430081 () Bool)

(assert (=> start!40416 m!430081))

(declare-fun m!430083 () Bool)

(assert (=> start!40416 m!430083))

(declare-fun m!430085 () Bool)

(assert (=> b!444108 m!430085))

(declare-fun m!430087 () Bool)

(assert (=> b!444108 m!430087))

(declare-fun m!430089 () Bool)

(assert (=> b!444109 m!430089))

(declare-fun m!430091 () Bool)

(assert (=> b!444115 m!430091))

(declare-fun m!430093 () Bool)

(assert (=> b!444118 m!430093))

(declare-fun m!430095 () Bool)

(assert (=> b!444117 m!430095))

(declare-fun m!430097 () Bool)

(assert (=> b!444111 m!430097))

(declare-fun m!430099 () Bool)

(assert (=> b!444114 m!430099))

(declare-fun m!430101 () Bool)

(assert (=> b!444112 m!430101))

(check-sat (not b!444111) tp_is_empty!11793 (not b!444108) (not b!444117) (not mapNonEmpty!19317) (not b!444114) (not b!444109) (not b!444115) (not start!40416) (not b!444118))
(check-sat)
