; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112536 () Bool)

(assert start!112536)

(declare-fun b_free!30895 () Bool)

(declare-fun b_next!30895 () Bool)

(assert (=> start!112536 (= b_free!30895 (not b_next!30895))))

(declare-fun tp!108323 () Bool)

(declare-fun b_and!49801 () Bool)

(assert (=> start!112536 (= tp!108323 b_and!49801)))

(declare-fun b!1334245 () Bool)

(declare-fun res!885594 () Bool)

(declare-fun e!759951 () Bool)

(assert (=> b!1334245 (=> (not res!885594) (not e!759951))))

(declare-datatypes ((array!90455 0))(
  ( (array!90456 (arr!43689 (Array (_ BitVec 32) (_ BitVec 64))) (size!44240 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90455)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun from!1980 () (_ BitVec 32))

(assert (=> b!1334245 (= res!885594 (not (= k!1153 (select (arr!43689 _keys!1590) from!1980))))))

(declare-fun b!1334246 () Bool)

(declare-fun res!885593 () Bool)

(declare-fun e!759953 () Bool)

(assert (=> b!1334246 (=> (not res!885593) (not e!759953))))

(declare-datatypes ((List!31151 0))(
  ( (Nil!31148) (Cons!31147 (h!32356 (_ BitVec 64)) (t!45412 List!31151)) )
))
(declare-fun arrayNoDuplicates!0 (array!90455 (_ BitVec 32) List!31151) Bool)

(assert (=> b!1334246 (= res!885593 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31148))))

(declare-fun b!1334247 () Bool)

(declare-fun res!885601 () Bool)

(assert (=> b!1334247 (=> (not res!885601) (not e!759953))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90455 (_ BitVec 32)) Bool)

(assert (=> b!1334247 (= res!885601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1334248 () Bool)

(assert (=> b!1334248 (= e!759951 (not true))))

(declare-datatypes ((V!54177 0))(
  ( (V!54178 (val!18477 Int)) )
))
(declare-datatypes ((tuple2!23980 0))(
  ( (tuple2!23981 (_1!12000 (_ BitVec 64)) (_2!12000 V!54177)) )
))
(declare-datatypes ((List!31152 0))(
  ( (Nil!31149) (Cons!31148 (h!32357 tuple2!23980) (t!45413 List!31152)) )
))
(declare-datatypes ((ListLongMap!21649 0))(
  ( (ListLongMap!21650 (toList!10840 List!31152)) )
))
(declare-fun lt!592248 () ListLongMap!21649)

(declare-fun contains!8940 (ListLongMap!21649 (_ BitVec 64)) Bool)

(assert (=> b!1334248 (contains!8940 lt!592248 k!1153)))

(declare-datatypes ((Unit!43821 0))(
  ( (Unit!43822) )
))
(declare-fun lt!592250 () Unit!43821)

(declare-fun lt!592249 () V!54177)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!302 ((_ BitVec 64) (_ BitVec 64) V!54177 ListLongMap!21649) Unit!43821)

(assert (=> b!1334248 (= lt!592250 (lemmaInListMapAfterAddingDiffThenInBefore!302 k!1153 (select (arr!43689 _keys!1590) from!1980) lt!592249 lt!592248))))

(declare-fun b!1334250 () Bool)

(declare-fun e!759950 () Bool)

(declare-fun tp_is_empty!36805 () Bool)

(assert (=> b!1334250 (= e!759950 tp_is_empty!36805)))

(declare-fun mapNonEmpty!56881 () Bool)

(declare-fun mapRes!56881 () Bool)

(declare-fun tp!108322 () Bool)

(assert (=> mapNonEmpty!56881 (= mapRes!56881 (and tp!108322 e!759950))))

(declare-fun mapKey!56881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17504 0))(
  ( (ValueCellFull!17504 (v!21112 V!54177)) (EmptyCell!17504) )
))
(declare-fun mapValue!56881 () ValueCell!17504)

(declare-datatypes ((array!90457 0))(
  ( (array!90458 (arr!43690 (Array (_ BitVec 32) ValueCell!17504)) (size!44241 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90457)

(declare-fun mapRest!56881 () (Array (_ BitVec 32) ValueCell!17504))

(assert (=> mapNonEmpty!56881 (= (arr!43690 _values!1320) (store mapRest!56881 mapKey!56881 mapValue!56881))))

(declare-fun b!1334251 () Bool)

(declare-fun e!759952 () Bool)

(declare-fun e!759955 () Bool)

(assert (=> b!1334251 (= e!759952 (and e!759955 mapRes!56881))))

(declare-fun condMapEmpty!56881 () Bool)

(declare-fun mapDefault!56881 () ValueCell!17504)

