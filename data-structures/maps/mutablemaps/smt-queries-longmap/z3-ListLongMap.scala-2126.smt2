; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35994 () Bool)

(assert start!35994)

(declare-fun b!361264 () Bool)

(declare-fun e!221250 () Bool)

(declare-fun tp_is_empty!8379 () Bool)

(assert (=> b!361264 (= e!221250 tp_is_empty!8379)))

(declare-fun b!361265 () Bool)

(declare-fun e!221249 () Bool)

(declare-fun mapRes!14094 () Bool)

(assert (=> b!361265 (= e!221249 (and e!221250 mapRes!14094))))

(declare-fun condMapEmpty!14094 () Bool)

(declare-datatypes ((V!12149 0))(
  ( (V!12150 (val!4234 Int)) )
))
(declare-datatypes ((ValueCell!3846 0))(
  ( (ValueCellFull!3846 (v!6425 V!12149)) (EmptyCell!3846) )
))
(declare-datatypes ((array!20285 0))(
  ( (array!20286 (arr!9627 (Array (_ BitVec 32) ValueCell!3846)) (size!9979 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20285)

(declare-fun mapDefault!14094 () ValueCell!3846)

(assert (=> b!361265 (= condMapEmpty!14094 (= (arr!9627 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3846)) mapDefault!14094)))))

(declare-fun b!361266 () Bool)

(declare-fun e!221247 () Bool)

(assert (=> b!361266 (= e!221247 tp_is_empty!8379)))

(declare-fun b!361267 () Bool)

(declare-fun res!201037 () Bool)

(declare-fun e!221246 () Bool)

(assert (=> b!361267 (=> (not res!201037) (not e!221246))))

(declare-datatypes ((array!20287 0))(
  ( (array!20288 (arr!9628 (Array (_ BitVec 32) (_ BitVec 64))) (size!9980 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20287)

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20287 (_ BitVec 32)) Bool)

(assert (=> b!361267 (= res!201037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun mapNonEmpty!14094 () Bool)

(declare-fun tp!28170 () Bool)

(assert (=> mapNonEmpty!14094 (= mapRes!14094 (and tp!28170 e!221247))))

(declare-fun mapKey!14094 () (_ BitVec 32))

(declare-fun mapRest!14094 () (Array (_ BitVec 32) ValueCell!3846))

(declare-fun mapValue!14094 () ValueCell!3846)

(assert (=> mapNonEmpty!14094 (= (arr!9627 _values!1277) (store mapRest!14094 mapKey!14094 mapValue!14094))))

(declare-fun mapIsEmpty!14094 () Bool)

(assert (=> mapIsEmpty!14094 mapRes!14094))

(declare-fun b!361268 () Bool)

(assert (=> b!361268 (= e!221246 false)))

(declare-fun lt!166523 () Bool)

(declare-datatypes ((List!5533 0))(
  ( (Nil!5530) (Cons!5529 (h!6385 (_ BitVec 64)) (t!10691 List!5533)) )
))
(declare-fun arrayNoDuplicates!0 (array!20287 (_ BitVec 32) List!5533) Bool)

(assert (=> b!361268 (= lt!166523 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5530))))

(declare-fun res!201036 () Bool)

(assert (=> start!35994 (=> (not res!201036) (not e!221246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35994 (= res!201036 (validMask!0 mask!1943))))

(assert (=> start!35994 e!221246))

(assert (=> start!35994 true))

(declare-fun array_inv!7080 (array!20285) Bool)

(assert (=> start!35994 (and (array_inv!7080 _values!1277) e!221249)))

(declare-fun array_inv!7081 (array!20287) Bool)

(assert (=> start!35994 (array_inv!7081 _keys!1541)))

(declare-fun b!361269 () Bool)

(declare-fun res!201038 () Bool)

(assert (=> b!361269 (=> (not res!201038) (not e!221246))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!361269 (= res!201038 (and (= (size!9979 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9980 _keys!1541) (size!9979 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(assert (= (and start!35994 res!201036) b!361269))

(assert (= (and b!361269 res!201038) b!361267))

(assert (= (and b!361267 res!201037) b!361268))

(assert (= (and b!361265 condMapEmpty!14094) mapIsEmpty!14094))

(assert (= (and b!361265 (not condMapEmpty!14094)) mapNonEmpty!14094))

(get-info :version)

(assert (= (and mapNonEmpty!14094 ((_ is ValueCellFull!3846) mapValue!14094)) b!361266))

(assert (= (and b!361265 ((_ is ValueCellFull!3846) mapDefault!14094)) b!361264))

(assert (= start!35994 b!361265))

(declare-fun m!358125 () Bool)

(assert (=> b!361267 m!358125))

(declare-fun m!358127 () Bool)

(assert (=> mapNonEmpty!14094 m!358127))

(declare-fun m!358129 () Bool)

(assert (=> b!361268 m!358129))

(declare-fun m!358131 () Bool)

(assert (=> start!35994 m!358131))

(declare-fun m!358133 () Bool)

(assert (=> start!35994 m!358133))

(declare-fun m!358135 () Bool)

(assert (=> start!35994 m!358135))

(check-sat (not b!361267) (not mapNonEmpty!14094) (not b!361268) (not start!35994) tp_is_empty!8379)
(check-sat)
