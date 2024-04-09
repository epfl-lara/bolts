; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107300 () Bool)

(assert start!107300)

(declare-fun mapIsEmpty!51010 () Bool)

(declare-fun mapRes!51010 () Bool)

(assert (=> mapIsEmpty!51010 mapRes!51010))

(declare-fun b!1271301 () Bool)

(declare-fun e!724958 () Bool)

(declare-fun tp_is_empty!32953 () Bool)

(assert (=> b!1271301 (= e!724958 tp_is_empty!32953)))

(declare-fun mapNonEmpty!51010 () Bool)

(declare-fun tp!97352 () Bool)

(declare-fun e!724955 () Bool)

(assert (=> mapNonEmpty!51010 (= mapRes!51010 (and tp!97352 e!724955))))

(declare-datatypes ((V!49131 0))(
  ( (V!49132 (val!16551 Int)) )
))
(declare-datatypes ((ValueCell!15623 0))(
  ( (ValueCellFull!15623 (v!19186 V!49131)) (EmptyCell!15623) )
))
(declare-fun mapValue!51010 () ValueCell!15623)

(declare-fun mapRest!51010 () (Array (_ BitVec 32) ValueCell!15623))

(declare-fun mapKey!51010 () (_ BitVec 32))

(declare-datatypes ((array!83115 0))(
  ( (array!83116 (arr!40090 (Array (_ BitVec 32) ValueCell!15623)) (size!40627 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83115)

(assert (=> mapNonEmpty!51010 (= (arr!40090 _values!1134) (store mapRest!51010 mapKey!51010 mapValue!51010))))

(declare-fun b!1271302 () Bool)

(declare-fun e!724954 () Bool)

(assert (=> b!1271302 (= e!724954 false)))

(declare-fun lt!574802 () Bool)

(declare-datatypes ((array!83117 0))(
  ( (array!83118 (arr!40091 (Array (_ BitVec 32) (_ BitVec 64))) (size!40628 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83117)

(declare-datatypes ((List!28685 0))(
  ( (Nil!28682) (Cons!28681 (h!29890 (_ BitVec 64)) (t!42221 List!28685)) )
))
(declare-fun arrayNoDuplicates!0 (array!83117 (_ BitVec 32) List!28685) Bool)

(assert (=> b!1271302 (= lt!574802 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28682))))

(declare-fun b!1271303 () Bool)

(assert (=> b!1271303 (= e!724955 tp_is_empty!32953)))

(declare-fun b!1271304 () Bool)

(declare-fun e!724956 () Bool)

(assert (=> b!1271304 (= e!724956 (and e!724958 mapRes!51010))))

(declare-fun condMapEmpty!51010 () Bool)

(declare-fun mapDefault!51010 () ValueCell!15623)

