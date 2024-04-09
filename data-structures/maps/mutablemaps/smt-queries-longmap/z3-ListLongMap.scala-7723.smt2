; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97062 () Bool)

(assert start!97062)

(declare-fun b!1103544 () Bool)

(declare-fun res!736315 () Bool)

(declare-fun e!630001 () Bool)

(assert (=> b!1103544 (=> (not res!736315) (not e!630001))))

(declare-datatypes ((array!71508 0))(
  ( (array!71509 (arr!34407 (Array (_ BitVec 32) (_ BitVec 64))) (size!34944 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71508)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71508 (_ BitVec 32)) Bool)

(assert (=> b!1103544 (= res!736315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103545 () Bool)

(declare-fun res!736312 () Bool)

(assert (=> b!1103545 (=> (not res!736312) (not e!630001))))

(declare-datatypes ((List!24164 0))(
  ( (Nil!24161) (Cons!24160 (h!25369 (_ BitVec 64)) (t!34436 List!24164)) )
))
(declare-fun arrayNoDuplicates!0 (array!71508 (_ BitVec 32) List!24164) Bool)

(assert (=> b!1103545 (= res!736312 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24161))))

(declare-fun b!1103546 () Bool)

(declare-fun res!736316 () Bool)

(assert (=> b!1103546 (=> (not res!736316) (not e!630001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103546 (= res!736316 (validMask!0 mask!1564))))

(declare-fun b!1103547 () Bool)

(declare-fun e!630005 () Bool)

(declare-fun tp_is_empty!27315 () Bool)

(assert (=> b!1103547 (= e!630005 tp_is_empty!27315)))

(declare-fun b!1103548 () Bool)

(declare-fun res!736311 () Bool)

(assert (=> b!1103548 (=> (not res!736311) (not e!630001))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1103548 (= res!736311 (validKeyInArray!0 k0!934))))

(declare-fun b!1103549 () Bool)

(declare-fun res!736314 () Bool)

(assert (=> b!1103549 (=> (not res!736314) (not e!630001))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1103549 (= res!736314 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34944 _keys!1208))))))

(declare-fun res!736313 () Bool)

(assert (=> start!97062 (=> (not res!736313) (not e!630001))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97062 (= res!736313 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34944 _keys!1208))))))

(assert (=> start!97062 e!630001))

(declare-fun array_inv!26352 (array!71508) Bool)

(assert (=> start!97062 (array_inv!26352 _keys!1208)))

(assert (=> start!97062 true))

(declare-datatypes ((V!41547 0))(
  ( (V!41548 (val!13714 Int)) )
))
(declare-datatypes ((ValueCell!12948 0))(
  ( (ValueCellFull!12948 (v!16347 V!41547)) (EmptyCell!12948) )
))
(declare-datatypes ((array!71510 0))(
  ( (array!71511 (arr!34408 (Array (_ BitVec 32) ValueCell!12948)) (size!34945 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71510)

(declare-fun e!630002 () Bool)

(declare-fun array_inv!26353 (array!71510) Bool)

(assert (=> start!97062 (and (array_inv!26353 _values!996) e!630002)))

(declare-fun b!1103550 () Bool)

(declare-fun e!630004 () Bool)

(assert (=> b!1103550 (= e!630004 tp_is_empty!27315)))

(declare-fun b!1103551 () Bool)

(declare-fun res!736310 () Bool)

(assert (=> b!1103551 (=> (not res!736310) (not e!630001))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1103551 (= res!736310 (and (= (size!34945 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34944 _keys!1208) (size!34945 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103552 () Bool)

(declare-fun mapRes!42778 () Bool)

(assert (=> b!1103552 (= e!630002 (and e!630004 mapRes!42778))))

(declare-fun condMapEmpty!42778 () Bool)

(declare-fun mapDefault!42778 () ValueCell!12948)

(assert (=> b!1103552 (= condMapEmpty!42778 (= (arr!34408 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12948)) mapDefault!42778)))))

(declare-fun b!1103553 () Bool)

(assert (=> b!1103553 (= e!630001 (and (= (select (arr!34407 _keys!1208) i!673) k0!934) (not (= (size!34944 _keys!1208) (bvadd #b00000000000000000000000000000001 mask!1564)))))))

(declare-fun mapNonEmpty!42778 () Bool)

(declare-fun tp!81699 () Bool)

(assert (=> mapNonEmpty!42778 (= mapRes!42778 (and tp!81699 e!630005))))

(declare-fun mapValue!42778 () ValueCell!12948)

(declare-fun mapRest!42778 () (Array (_ BitVec 32) ValueCell!12948))

(declare-fun mapKey!42778 () (_ BitVec 32))

(assert (=> mapNonEmpty!42778 (= (arr!34408 _values!996) (store mapRest!42778 mapKey!42778 mapValue!42778))))

(declare-fun mapIsEmpty!42778 () Bool)

(assert (=> mapIsEmpty!42778 mapRes!42778))

(assert (= (and start!97062 res!736313) b!1103546))

(assert (= (and b!1103546 res!736316) b!1103551))

(assert (= (and b!1103551 res!736310) b!1103544))

(assert (= (and b!1103544 res!736315) b!1103545))

(assert (= (and b!1103545 res!736312) b!1103549))

(assert (= (and b!1103549 res!736314) b!1103548))

(assert (= (and b!1103548 res!736311) b!1103553))

(assert (= (and b!1103552 condMapEmpty!42778) mapIsEmpty!42778))

(assert (= (and b!1103552 (not condMapEmpty!42778)) mapNonEmpty!42778))

(get-info :version)

(assert (= (and mapNonEmpty!42778 ((_ is ValueCellFull!12948) mapValue!42778)) b!1103547))

(assert (= (and b!1103552 ((_ is ValueCellFull!12948) mapDefault!42778)) b!1103550))

(assert (= start!97062 b!1103552))

(declare-fun m!1023771 () Bool)

(assert (=> b!1103548 m!1023771))

(declare-fun m!1023773 () Bool)

(assert (=> b!1103545 m!1023773))

(declare-fun m!1023775 () Bool)

(assert (=> mapNonEmpty!42778 m!1023775))

(declare-fun m!1023777 () Bool)

(assert (=> b!1103546 m!1023777))

(declare-fun m!1023779 () Bool)

(assert (=> b!1103553 m!1023779))

(declare-fun m!1023781 () Bool)

(assert (=> start!97062 m!1023781))

(declare-fun m!1023783 () Bool)

(assert (=> start!97062 m!1023783))

(declare-fun m!1023785 () Bool)

(assert (=> b!1103544 m!1023785))

(check-sat (not b!1103545) tp_is_empty!27315 (not b!1103548) (not b!1103546) (not mapNonEmpty!42778) (not start!97062) (not b!1103544))
(check-sat)
