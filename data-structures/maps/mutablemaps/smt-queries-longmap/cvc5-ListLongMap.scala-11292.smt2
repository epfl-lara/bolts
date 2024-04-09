; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131666 () Bool)

(assert start!131666)

(declare-fun b!1541638 () Bool)

(declare-fun res!1058151 () Bool)

(declare-fun e!857539 () Bool)

(assert (=> b!1541638 (=> (not res!1058151) (not e!857539))))

(declare-datatypes ((array!102487 0))(
  ( (array!102488 (arr!49443 (Array (_ BitVec 32) (_ BitVec 64))) (size!49994 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102487)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58637 0))(
  ( (V!58638 (val!18900 Int)) )
))
(declare-datatypes ((ValueCell!17912 0))(
  ( (ValueCellFull!17912 (v!21697 V!58637)) (EmptyCell!17912) )
))
(declare-datatypes ((array!102489 0))(
  ( (array!102490 (arr!49444 (Array (_ BitVec 32) ValueCell!17912)) (size!49995 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102489)

(assert (=> b!1541638 (= res!1058151 (and (= (size!49995 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!49994 _keys!618) (size!49995 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!58165 () Bool)

(declare-fun mapRes!58165 () Bool)

(assert (=> mapIsEmpty!58165 mapRes!58165))

(declare-fun b!1541639 () Bool)

(declare-datatypes ((List!36008 0))(
  ( (Nil!36005) (Cons!36004 (h!37450 (_ BitVec 64)) (t!50709 List!36008)) )
))
(declare-fun noDuplicate!2669 (List!36008) Bool)

(assert (=> b!1541639 (= e!857539 (not (noDuplicate!2669 Nil!36005)))))

(declare-fun mapNonEmpty!58165 () Bool)

(declare-fun tp!110693 () Bool)

(declare-fun e!857540 () Bool)

(assert (=> mapNonEmpty!58165 (= mapRes!58165 (and tp!110693 e!857540))))

(declare-fun mapRest!58165 () (Array (_ BitVec 32) ValueCell!17912))

(declare-fun mapKey!58165 () (_ BitVec 32))

(declare-fun mapValue!58165 () ValueCell!17912)

(assert (=> mapNonEmpty!58165 (= (arr!49444 _values!470) (store mapRest!58165 mapKey!58165 mapValue!58165))))

(declare-fun res!1058150 () Bool)

(assert (=> start!131666 (=> (not res!1058150) (not e!857539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131666 (= res!1058150 (validMask!0 mask!926))))

(assert (=> start!131666 e!857539))

(assert (=> start!131666 true))

(declare-fun e!857542 () Bool)

(declare-fun array_inv!38385 (array!102489) Bool)

(assert (=> start!131666 (and (array_inv!38385 _values!470) e!857542)))

(declare-fun array_inv!38386 (array!102487) Bool)

(assert (=> start!131666 (array_inv!38386 _keys!618)))

(declare-fun b!1541640 () Bool)

(declare-fun e!857543 () Bool)

(assert (=> b!1541640 (= e!857542 (and e!857543 mapRes!58165))))

(declare-fun condMapEmpty!58165 () Bool)

(declare-fun mapDefault!58165 () ValueCell!17912)

