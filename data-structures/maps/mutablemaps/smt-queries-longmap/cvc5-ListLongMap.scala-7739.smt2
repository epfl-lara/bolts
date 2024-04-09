; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97214 () Bool)

(assert start!97214)

(declare-fun b!1105435 () Bool)

(declare-fun res!737692 () Bool)

(declare-fun e!630950 () Bool)

(assert (=> b!1105435 (=> (not res!737692) (not e!630950))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105435 (= res!737692 (validKeyInArray!0 k!934))))

(declare-fun b!1105437 () Bool)

(declare-fun e!630948 () Bool)

(assert (=> b!1105437 (= e!630950 e!630948)))

(declare-fun res!737694 () Bool)

(assert (=> b!1105437 (=> (not res!737694) (not e!630948))))

(declare-datatypes ((array!71690 0))(
  ( (array!71691 (arr!34494 (Array (_ BitVec 32) (_ BitVec 64))) (size!35031 (_ BitVec 32))) )
))
(declare-fun lt!495290 () array!71690)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71690 (_ BitVec 32)) Bool)

(assert (=> b!1105437 (= res!737694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495290 mask!1564))))

(declare-fun _keys!1208 () array!71690)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1105437 (= lt!495290 (array!71691 (store (arr!34494 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35031 _keys!1208)))))

(declare-fun b!1105438 () Bool)

(declare-fun res!737689 () Bool)

(assert (=> b!1105438 (=> (not res!737689) (not e!630950))))

(assert (=> b!1105438 (= res!737689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105439 () Bool)

(declare-fun res!737688 () Bool)

(assert (=> b!1105439 (=> (not res!737688) (not e!630950))))

(assert (=> b!1105439 (= res!737688 (= (select (arr!34494 _keys!1208) i!673) k!934))))

(declare-fun b!1105440 () Bool)

(declare-fun res!737697 () Bool)

(assert (=> b!1105440 (=> (not res!737697) (not e!630950))))

(assert (=> b!1105440 (= res!737697 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35031 _keys!1208))))))

(declare-fun mapNonEmpty!42931 () Bool)

(declare-fun mapRes!42931 () Bool)

(declare-fun tp!81852 () Bool)

(declare-fun e!630953 () Bool)

(assert (=> mapNonEmpty!42931 (= mapRes!42931 (and tp!81852 e!630953))))

(declare-datatypes ((V!41673 0))(
  ( (V!41674 (val!13761 Int)) )
))
(declare-datatypes ((ValueCell!12995 0))(
  ( (ValueCellFull!12995 (v!16395 V!41673)) (EmptyCell!12995) )
))
(declare-fun mapRest!42931 () (Array (_ BitVec 32) ValueCell!12995))

(declare-fun mapValue!42931 () ValueCell!12995)

(declare-fun mapKey!42931 () (_ BitVec 32))

(declare-datatypes ((array!71692 0))(
  ( (array!71693 (arr!34495 (Array (_ BitVec 32) ValueCell!12995)) (size!35032 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71692)

(assert (=> mapNonEmpty!42931 (= (arr!34495 _values!996) (store mapRest!42931 mapKey!42931 mapValue!42931))))

(declare-fun b!1105441 () Bool)

(declare-fun res!737693 () Bool)

(assert (=> b!1105441 (=> (not res!737693) (not e!630950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105441 (= res!737693 (validMask!0 mask!1564))))

(declare-fun b!1105442 () Bool)

(declare-fun tp_is_empty!27409 () Bool)

(assert (=> b!1105442 (= e!630953 tp_is_empty!27409)))

(declare-fun mapIsEmpty!42931 () Bool)

(assert (=> mapIsEmpty!42931 mapRes!42931))

(declare-fun b!1105443 () Bool)

(declare-fun res!737690 () Bool)

(assert (=> b!1105443 (=> (not res!737690) (not e!630950))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1105443 (= res!737690 (and (= (size!35032 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35031 _keys!1208) (size!35032 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1105444 () Bool)

(declare-fun e!630949 () Bool)

(assert (=> b!1105444 (= e!630949 tp_is_empty!27409)))

(declare-fun b!1105445 () Bool)

(declare-fun res!737691 () Bool)

(assert (=> b!1105445 (=> (not res!737691) (not e!630948))))

(declare-datatypes ((List!24195 0))(
  ( (Nil!24192) (Cons!24191 (h!25400 (_ BitVec 64)) (t!34467 List!24195)) )
))
(declare-fun arrayNoDuplicates!0 (array!71690 (_ BitVec 32) List!24195) Bool)

(assert (=> b!1105445 (= res!737691 (arrayNoDuplicates!0 lt!495290 #b00000000000000000000000000000000 Nil!24192))))

(declare-fun b!1105436 () Bool)

(declare-fun e!630951 () Bool)

(assert (=> b!1105436 (= e!630951 (and e!630949 mapRes!42931))))

(declare-fun condMapEmpty!42931 () Bool)

(declare-fun mapDefault!42931 () ValueCell!12995)

