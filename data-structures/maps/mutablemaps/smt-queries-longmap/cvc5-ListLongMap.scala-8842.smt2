; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107312 () Bool)

(assert start!107312)

(declare-fun b!1271409 () Bool)

(declare-fun res!845969 () Bool)

(declare-fun e!725048 () Bool)

(assert (=> b!1271409 (=> (not res!845969) (not e!725048))))

(declare-datatypes ((array!83137 0))(
  ( (array!83138 (arr!40101 (Array (_ BitVec 32) (_ BitVec 64))) (size!40638 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83137)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83137 (_ BitVec 32)) Bool)

(assert (=> b!1271409 (= res!845969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!51028 () Bool)

(declare-fun mapRes!51028 () Bool)

(assert (=> mapIsEmpty!51028 mapRes!51028))

(declare-fun mapNonEmpty!51028 () Bool)

(declare-fun tp!97370 () Bool)

(declare-fun e!725045 () Bool)

(assert (=> mapNonEmpty!51028 (= mapRes!51028 (and tp!97370 e!725045))))

(declare-datatypes ((V!49147 0))(
  ( (V!49148 (val!16557 Int)) )
))
(declare-datatypes ((ValueCell!15629 0))(
  ( (ValueCellFull!15629 (v!19192 V!49147)) (EmptyCell!15629) )
))
(declare-datatypes ((array!83139 0))(
  ( (array!83140 (arr!40102 (Array (_ BitVec 32) ValueCell!15629)) (size!40639 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83139)

(declare-fun mapValue!51028 () ValueCell!15629)

(declare-fun mapRest!51028 () (Array (_ BitVec 32) ValueCell!15629))

(declare-fun mapKey!51028 () (_ BitVec 32))

(assert (=> mapNonEmpty!51028 (= (arr!40102 _values!1134) (store mapRest!51028 mapKey!51028 mapValue!51028))))

(declare-fun b!1271410 () Bool)

(declare-fun tp_is_empty!32965 () Bool)

(assert (=> b!1271410 (= e!725045 tp_is_empty!32965)))

(declare-fun b!1271411 () Bool)

(assert (=> b!1271411 (= e!725048 false)))

(declare-fun lt!574820 () Bool)

(declare-datatypes ((List!28689 0))(
  ( (Nil!28686) (Cons!28685 (h!29894 (_ BitVec 64)) (t!42225 List!28689)) )
))
(declare-fun arrayNoDuplicates!0 (array!83137 (_ BitVec 32) List!28689) Bool)

(assert (=> b!1271411 (= lt!574820 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28686))))

(declare-fun b!1271412 () Bool)

(declare-fun e!725047 () Bool)

(assert (=> b!1271412 (= e!725047 tp_is_empty!32965)))

(declare-fun b!1271413 () Bool)

(declare-fun e!725044 () Bool)

(assert (=> b!1271413 (= e!725044 (and e!725047 mapRes!51028))))

(declare-fun condMapEmpty!51028 () Bool)

(declare-fun mapDefault!51028 () ValueCell!15629)

