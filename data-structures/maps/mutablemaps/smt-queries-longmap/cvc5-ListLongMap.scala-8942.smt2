; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108414 () Bool)

(assert start!108414)

(declare-fun b_free!27925 () Bool)

(declare-fun b_next!27925 () Bool)

(assert (=> start!108414 (= b_free!27925 (not b_next!27925))))

(declare-fun tp!98885 () Bool)

(declare-fun b_and!45995 () Bool)

(assert (=> start!108414 (= tp!98885 b_and!45995)))

(declare-fun b!1279006 () Bool)

(declare-fun res!849721 () Bool)

(declare-fun e!730776 () Bool)

(assert (=> b!1279006 (=> (not res!849721) (not e!730776))))

(declare-datatypes ((array!84165 0))(
  ( (array!84166 (arr!40582 (Array (_ BitVec 32) (_ BitVec 64))) (size!41133 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84165)

(declare-datatypes ((List!28926 0))(
  ( (Nil!28923) (Cons!28922 (h!30131 (_ BitVec 64)) (t!42473 List!28926)) )
))
(declare-fun arrayNoDuplicates!0 (array!84165 (_ BitVec 32) List!28926) Bool)

(assert (=> b!1279006 (= res!849721 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28923))))

(declare-fun b!1279007 () Bool)

(declare-fun e!730779 () Bool)

(declare-fun tp_is_empty!33565 () Bool)

(assert (=> b!1279007 (= e!730779 tp_is_empty!33565)))

(declare-fun b!1279008 () Bool)

(declare-fun res!849722 () Bool)

(assert (=> b!1279008 (=> (not res!849722) (not e!730776))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49857 0))(
  ( (V!49858 (val!16857 Int)) )
))
(declare-datatypes ((ValueCell!15884 0))(
  ( (ValueCellFull!15884 (v!19455 V!49857)) (EmptyCell!15884) )
))
(declare-datatypes ((array!84167 0))(
  ( (array!84168 (arr!40583 (Array (_ BitVec 32) ValueCell!15884)) (size!41134 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84167)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279008 (= res!849722 (and (= (size!41134 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41133 _keys!1741) (size!41134 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279009 () Bool)

(declare-fun res!849720 () Bool)

(assert (=> b!1279009 (=> (not res!849720) (not e!730776))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1279009 (= res!849720 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41133 _keys!1741))))))

(declare-fun mapNonEmpty!51899 () Bool)

(declare-fun mapRes!51899 () Bool)

(declare-fun tp!98886 () Bool)

(declare-fun e!730780 () Bool)

(assert (=> mapNonEmpty!51899 (= mapRes!51899 (and tp!98886 e!730780))))

(declare-fun mapKey!51899 () (_ BitVec 32))

(declare-fun mapRest!51899 () (Array (_ BitVec 32) ValueCell!15884))

(declare-fun mapValue!51899 () ValueCell!15884)

(assert (=> mapNonEmpty!51899 (= (arr!40583 _values!1445) (store mapRest!51899 mapKey!51899 mapValue!51899))))

(declare-fun b!1279010 () Bool)

(declare-fun e!730777 () Bool)

(assert (=> b!1279010 (= e!730777 (and e!730779 mapRes!51899))))

(declare-fun condMapEmpty!51899 () Bool)

(declare-fun mapDefault!51899 () ValueCell!15884)

