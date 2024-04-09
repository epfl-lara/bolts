; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35862 () Bool)

(assert start!35862)

(declare-fun b!360211 () Bool)

(declare-fun res!200393 () Bool)

(declare-fun e!220569 () Bool)

(assert (=> b!360211 (=> (not res!200393) (not e!220569))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!20135 0))(
  ( (array!20136 (arr!9558 (Array (_ BitVec 32) (_ BitVec 64))) (size!9910 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20135)

(declare-datatypes ((V!12053 0))(
  ( (V!12054 (val!4198 Int)) )
))
(declare-datatypes ((ValueCell!3810 0))(
  ( (ValueCellFull!3810 (v!6388 V!12053)) (EmptyCell!3810) )
))
(declare-datatypes ((array!20137 0))(
  ( (array!20138 (arr!9559 (Array (_ BitVec 32) ValueCell!3810)) (size!9911 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20137)

(assert (=> b!360211 (= res!200393 (and (= (size!9911 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9910 _keys!1456) (size!9911 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360212 () Bool)

(declare-fun e!220568 () Bool)

(declare-fun e!220570 () Bool)

(declare-fun mapRes!13968 () Bool)

(assert (=> b!360212 (= e!220568 (and e!220570 mapRes!13968))))

(declare-fun condMapEmpty!13968 () Bool)

(declare-fun mapDefault!13968 () ValueCell!3810)

(assert (=> b!360212 (= condMapEmpty!13968 (= (arr!9559 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3810)) mapDefault!13968)))))

(declare-fun res!200398 () Bool)

(assert (=> start!35862 (=> (not res!200398) (not e!220569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35862 (= res!200398 (validMask!0 mask!1842))))

(assert (=> start!35862 e!220569))

(declare-fun tp_is_empty!8307 () Bool)

(assert (=> start!35862 tp_is_empty!8307))

(assert (=> start!35862 true))

(declare-fun array_inv!7028 (array!20135) Bool)

(assert (=> start!35862 (array_inv!7028 _keys!1456)))

(declare-fun array_inv!7029 (array!20137) Bool)

(assert (=> start!35862 (and (array_inv!7029 _values!1208) e!220568)))

(declare-fun mapIsEmpty!13968 () Bool)

(assert (=> mapIsEmpty!13968 mapRes!13968))

(declare-fun b!360213 () Bool)

(declare-fun res!200392 () Bool)

(assert (=> b!360213 (=> (not res!200392) (not e!220569))))

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!360213 (= res!200392 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9910 _keys!1456))))))

(declare-fun b!360214 () Bool)

(assert (=> b!360214 (= e!220569 (not true))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20135 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360214 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!12053)

(declare-datatypes ((Unit!11079 0))(
  ( (Unit!11080) )
))
(declare-fun lt!166408 () Unit!11079)

(declare-fun zeroValue!1150 () V!12053)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!56 (array!20135 array!20137 (_ BitVec 32) (_ BitVec 32) V!12053 V!12053 (_ BitVec 64) (_ BitVec 32)) Unit!11079)

(assert (=> b!360214 (= lt!166408 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!56 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!360215 () Bool)

(declare-fun res!200391 () Bool)

(assert (=> b!360215 (=> (not res!200391) (not e!220569))))

(assert (=> b!360215 (= res!200391 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!360216 () Bool)

(declare-fun e!220567 () Bool)

(assert (=> b!360216 (= e!220567 tp_is_empty!8307)))

(declare-fun mapNonEmpty!13968 () Bool)

(declare-fun tp!28035 () Bool)

(assert (=> mapNonEmpty!13968 (= mapRes!13968 (and tp!28035 e!220567))))

(declare-fun mapRest!13968 () (Array (_ BitVec 32) ValueCell!3810))

(declare-fun mapKey!13968 () (_ BitVec 32))

(declare-fun mapValue!13968 () ValueCell!3810)

(assert (=> mapNonEmpty!13968 (= (arr!9559 _values!1208) (store mapRest!13968 mapKey!13968 mapValue!13968))))

(declare-fun b!360217 () Bool)

(declare-fun res!200397 () Bool)

(assert (=> b!360217 (=> (not res!200397) (not e!220569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20135 (_ BitVec 32)) Bool)

(assert (=> b!360217 (= res!200397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!360218 () Bool)

(declare-fun res!200395 () Bool)

(assert (=> b!360218 (=> (not res!200395) (not e!220569))))

(declare-datatypes ((List!5516 0))(
  ( (Nil!5513) (Cons!5512 (h!6368 (_ BitVec 64)) (t!10674 List!5516)) )
))
(declare-fun arrayNoDuplicates!0 (array!20135 (_ BitVec 32) List!5516) Bool)

(assert (=> b!360218 (= res!200395 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5513))))

(declare-fun b!360219 () Bool)

(declare-fun res!200394 () Bool)

(assert (=> b!360219 (=> (not res!200394) (not e!220569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360219 (= res!200394 (validKeyInArray!0 k0!1077))))

(declare-fun b!360220 () Bool)

(assert (=> b!360220 (= e!220570 tp_is_empty!8307)))

(declare-fun b!360221 () Bool)

(declare-fun res!200396 () Bool)

(assert (=> b!360221 (=> (not res!200396) (not e!220569))))

(assert (=> b!360221 (= res!200396 (not (= (select (arr!9558 _keys!1456) from!1805) k0!1077)))))

(assert (= (and start!35862 res!200398) b!360211))

(assert (= (and b!360211 res!200393) b!360217))

(assert (= (and b!360217 res!200397) b!360218))

(assert (= (and b!360218 res!200395) b!360219))

(assert (= (and b!360219 res!200394) b!360213))

(assert (= (and b!360213 res!200392) b!360215))

(assert (= (and b!360215 res!200391) b!360221))

(assert (= (and b!360221 res!200396) b!360214))

(assert (= (and b!360212 condMapEmpty!13968) mapIsEmpty!13968))

(assert (= (and b!360212 (not condMapEmpty!13968)) mapNonEmpty!13968))

(get-info :version)

(assert (= (and mapNonEmpty!13968 ((_ is ValueCellFull!3810) mapValue!13968)) b!360216))

(assert (= (and b!360212 ((_ is ValueCellFull!3810) mapDefault!13968)) b!360220))

(assert (= start!35862 b!360212))

(declare-fun m!357427 () Bool)

(assert (=> b!360218 m!357427))

(declare-fun m!357429 () Bool)

(assert (=> mapNonEmpty!13968 m!357429))

(declare-fun m!357431 () Bool)

(assert (=> b!360221 m!357431))

(declare-fun m!357433 () Bool)

(assert (=> b!360214 m!357433))

(declare-fun m!357435 () Bool)

(assert (=> b!360214 m!357435))

(declare-fun m!357437 () Bool)

(assert (=> start!35862 m!357437))

(declare-fun m!357439 () Bool)

(assert (=> start!35862 m!357439))

(declare-fun m!357441 () Bool)

(assert (=> start!35862 m!357441))

(declare-fun m!357443 () Bool)

(assert (=> b!360219 m!357443))

(declare-fun m!357445 () Bool)

(assert (=> b!360215 m!357445))

(declare-fun m!357447 () Bool)

(assert (=> b!360217 m!357447))

(check-sat (not b!360215) (not b!360219) (not b!360214) (not b!360218) (not b!360217) (not start!35862) (not mapNonEmpty!13968) tp_is_empty!8307)
(check-sat)
