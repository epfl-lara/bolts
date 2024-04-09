; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83918 () Bool)

(assert start!83918)

(declare-fun b_free!19699 () Bool)

(declare-fun b_next!19699 () Bool)

(assert (=> start!83918 (= b_free!19699 (not b_next!19699))))

(declare-fun tp!68539 () Bool)

(declare-fun b_and!31505 () Bool)

(assert (=> start!83918 (= tp!68539 b_and!31505)))

(declare-fun b!980126 () Bool)

(declare-fun e!552492 () Bool)

(declare-fun tp_is_empty!22693 () Bool)

(assert (=> b!980126 (= e!552492 tp_is_empty!22693)))

(declare-fun b!980127 () Bool)

(declare-fun e!552493 () Bool)

(assert (=> b!980127 (= e!552493 tp_is_empty!22693)))

(declare-fun b!980128 () Bool)

(declare-fun res!656054 () Bool)

(declare-fun e!552489 () Bool)

(assert (=> b!980128 (=> (not res!656054) (not e!552489))))

(declare-datatypes ((array!61395 0))(
  ( (array!61396 (arr!29551 (Array (_ BitVec 32) (_ BitVec 64))) (size!30031 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61395)

(declare-datatypes ((List!20617 0))(
  ( (Nil!20614) (Cons!20613 (h!21775 (_ BitVec 64)) (t!29280 List!20617)) )
))
(declare-fun arrayNoDuplicates!0 (array!61395 (_ BitVec 32) List!20617) Bool)

(assert (=> b!980128 (= res!656054 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20614))))

(declare-fun res!656052 () Bool)

(assert (=> start!83918 (=> (not res!656052) (not e!552489))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83918 (= res!656052 (validMask!0 mask!1948))))

(assert (=> start!83918 e!552489))

(assert (=> start!83918 true))

(assert (=> start!83918 tp_is_empty!22693))

(declare-datatypes ((V!35241 0))(
  ( (V!35242 (val!11397 Int)) )
))
(declare-datatypes ((ValueCell!10865 0))(
  ( (ValueCellFull!10865 (v!13959 V!35241)) (EmptyCell!10865) )
))
(declare-datatypes ((array!61397 0))(
  ( (array!61398 (arr!29552 (Array (_ BitVec 32) ValueCell!10865)) (size!30032 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61397)

(declare-fun e!552494 () Bool)

(declare-fun array_inv!22733 (array!61397) Bool)

(assert (=> start!83918 (and (array_inv!22733 _values!1278) e!552494)))

(assert (=> start!83918 tp!68539))

(declare-fun array_inv!22734 (array!61395) Bool)

(assert (=> start!83918 (array_inv!22734 _keys!1544)))

(declare-fun b!980129 () Bool)

(declare-fun res!656051 () Bool)

(assert (=> b!980129 (=> (not res!656051) (not e!552489))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980129 (= res!656051 (and (= (size!30032 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30031 _keys!1544) (size!30032 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980130 () Bool)

(declare-fun e!552491 () Bool)

(assert (=> b!980130 (= e!552491 true)))

(declare-datatypes ((tuple2!14726 0))(
  ( (tuple2!14727 (_1!7373 (_ BitVec 64)) (_2!7373 V!35241)) )
))
(declare-fun lt!435120 () tuple2!14726)

(declare-datatypes ((List!20618 0))(
  ( (Nil!20615) (Cons!20614 (h!21776 tuple2!14726) (t!29281 List!20618)) )
))
(declare-datatypes ((ListLongMap!13437 0))(
  ( (ListLongMap!13438 (toList!6734 List!20618)) )
))
(declare-fun lt!435115 () ListLongMap!13437)

(declare-fun lt!435119 () ListLongMap!13437)

(declare-fun lt!435123 () tuple2!14726)

(declare-fun +!2940 (ListLongMap!13437 tuple2!14726) ListLongMap!13437)

(assert (=> b!980130 (= lt!435119 (+!2940 (+!2940 lt!435115 lt!435120) lt!435123))))

(declare-fun zeroValue!1220 () V!35241)

(declare-datatypes ((Unit!32555 0))(
  ( (Unit!32556) )
))
(declare-fun lt!435124 () Unit!32555)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun lt!435121 () V!35241)

(declare-fun addCommutativeForDiffKeys!602 (ListLongMap!13437 (_ BitVec 64) V!35241 (_ BitVec 64) V!35241) Unit!32555)

(assert (=> b!980130 (= lt!435124 (addCommutativeForDiffKeys!602 lt!435115 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29551 _keys!1544) from!1932) lt!435121))))

(declare-fun mapNonEmpty!36068 () Bool)

(declare-fun mapRes!36068 () Bool)

(declare-fun tp!68540 () Bool)

(assert (=> mapNonEmpty!36068 (= mapRes!36068 (and tp!68540 e!552492))))

(declare-fun mapValue!36068 () ValueCell!10865)

(declare-fun mapRest!36068 () (Array (_ BitVec 32) ValueCell!10865))

(declare-fun mapKey!36068 () (_ BitVec 32))

(assert (=> mapNonEmpty!36068 (= (arr!29552 _values!1278) (store mapRest!36068 mapKey!36068 mapValue!36068))))

(declare-fun b!980131 () Bool)

(assert (=> b!980131 (= e!552494 (and e!552493 mapRes!36068))))

(declare-fun condMapEmpty!36068 () Bool)

(declare-fun mapDefault!36068 () ValueCell!10865)

