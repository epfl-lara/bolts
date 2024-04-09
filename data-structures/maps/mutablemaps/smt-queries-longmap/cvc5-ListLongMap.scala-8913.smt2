; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108164 () Bool)

(assert start!108164)

(declare-fun b_free!27841 () Bool)

(declare-fun b_next!27841 () Bool)

(assert (=> start!108164 (= b_free!27841 (not b_next!27841))))

(declare-fun tp!98477 () Bool)

(declare-fun b_and!45907 () Bool)

(assert (=> start!108164 (= tp!98477 b_and!45907)))

(declare-fun b!1276847 () Bool)

(declare-fun res!848593 () Bool)

(declare-fun e!729203 () Bool)

(assert (=> b!1276847 (=> (not res!848593) (not e!729203))))

(declare-datatypes ((array!83825 0))(
  ( (array!83826 (arr!40419 (Array (_ BitVec 32) (_ BitVec 64))) (size!40970 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83825)

(declare-datatypes ((List!28843 0))(
  ( (Nil!28840) (Cons!28839 (h!30048 (_ BitVec 64)) (t!42386 List!28843)) )
))
(declare-fun arrayNoDuplicates!0 (array!83825 (_ BitVec 32) List!28843) Bool)

(assert (=> b!1276847 (= res!848593 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28840))))

(declare-fun mapIsEmpty!51617 () Bool)

(declare-fun mapRes!51617 () Bool)

(assert (=> mapIsEmpty!51617 mapRes!51617))

(declare-fun b!1276848 () Bool)

(assert (=> b!1276848 (= e!729203 (not true))))

(declare-fun e!729201 () Bool)

(assert (=> b!1276848 e!729201))

(declare-fun c!123888 () Bool)

(declare-fun k!1053 () (_ BitVec 64))

(assert (=> b!1276848 (= c!123888 (and (not (= k!1053 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1053 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((Unit!42311 0))(
  ( (Unit!42312) )
))
(declare-fun lt!575490 () Unit!42311)

(declare-datatypes ((V!49625 0))(
  ( (V!49626 (val!16770 Int)) )
))
(declare-fun minValue!1129 () V!49625)

(declare-datatypes ((ValueCell!15797 0))(
  ( (ValueCellFull!15797 (v!19365 V!49625)) (EmptyCell!15797) )
))
(declare-datatypes ((array!83827 0))(
  ( (array!83828 (arr!40420 (Array (_ BitVec 32) ValueCell!15797)) (size!40971 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83827)

(declare-fun zeroValue!1129 () V!49625)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!628 (array!83825 array!83827 (_ BitVec 32) (_ BitVec 32) V!49625 V!49625 (_ BitVec 64) (_ BitVec 32) Int) Unit!42311)

(assert (=> b!1276848 (= lt!575490 (lemmaListMapContainsThenArrayContainsFrom!628 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 k!1053 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun mapNonEmpty!51617 () Bool)

(declare-fun tp!98478 () Bool)

(declare-fun e!729202 () Bool)

(assert (=> mapNonEmpty!51617 (= mapRes!51617 (and tp!98478 e!729202))))

(declare-fun mapKey!51617 () (_ BitVec 32))

(declare-fun mapRest!51617 () (Array (_ BitVec 32) ValueCell!15797))

(declare-fun mapValue!51617 () ValueCell!15797)

(assert (=> mapNonEmpty!51617 (= (arr!40420 _values!1187) (store mapRest!51617 mapKey!51617 mapValue!51617))))

(declare-fun b!1276849 () Bool)

(declare-fun res!848590 () Bool)

(assert (=> b!1276849 (=> (not res!848590) (not e!729203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83825 (_ BitVec 32)) Bool)

(assert (=> b!1276849 (= res!848590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun res!848594 () Bool)

(assert (=> start!108164 (=> (not res!848594) (not e!729203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108164 (= res!848594 (validMask!0 mask!1805))))

(assert (=> start!108164 e!729203))

(assert (=> start!108164 true))

(assert (=> start!108164 tp!98477))

(declare-fun tp_is_empty!33391 () Bool)

(assert (=> start!108164 tp_is_empty!33391))

(declare-fun e!729200 () Bool)

(declare-fun array_inv!30675 (array!83827) Bool)

(assert (=> start!108164 (and (array_inv!30675 _values!1187) e!729200)))

(declare-fun array_inv!30676 (array!83825) Bool)

(assert (=> start!108164 (array_inv!30676 _keys!1427)))

(declare-fun b!1276850 () Bool)

(assert (=> b!1276850 (= e!729202 tp_is_empty!33391)))

(declare-fun b!1276851 () Bool)

(declare-fun e!729199 () Bool)

(assert (=> b!1276851 (= e!729200 (and e!729199 mapRes!51617))))

(declare-fun condMapEmpty!51617 () Bool)

(declare-fun mapDefault!51617 () ValueCell!15797)

