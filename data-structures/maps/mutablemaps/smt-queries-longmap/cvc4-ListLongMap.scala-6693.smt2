; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84162 () Bool)

(assert start!84162)

(declare-fun mapNonEmpty!36434 () Bool)

(declare-fun mapRes!36434 () Bool)

(declare-fun tp!69119 () Bool)

(declare-fun e!554528 () Bool)

(assert (=> mapNonEmpty!36434 (= mapRes!36434 (and tp!69119 e!554528))))

(declare-datatypes ((V!35565 0))(
  ( (V!35566 (val!11519 Int)) )
))
(declare-datatypes ((ValueCell!10987 0))(
  ( (ValueCellFull!10987 (v!14081 V!35565)) (EmptyCell!10987) )
))
(declare-datatypes ((array!61845 0))(
  ( (array!61846 (arr!29776 (Array (_ BitVec 32) ValueCell!10987)) (size!30256 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61845)

(declare-fun mapRest!36434 () (Array (_ BitVec 32) ValueCell!10987))

(declare-fun mapValue!36434 () ValueCell!10987)

(declare-fun mapKey!36434 () (_ BitVec 32))

(assert (=> mapNonEmpty!36434 (= (arr!29776 _values!1278) (store mapRest!36434 mapKey!36434 mapValue!36434))))

(declare-fun b!983548 () Bool)

(declare-fun tp_is_empty!22937 () Bool)

(assert (=> b!983548 (= e!554528 tp_is_empty!22937)))

(declare-fun b!983549 () Bool)

(declare-fun e!554527 () Bool)

(assert (=> b!983549 (= e!554527 false)))

(declare-fun lt!436507 () Bool)

(declare-datatypes ((array!61847 0))(
  ( (array!61848 (arr!29777 (Array (_ BitVec 32) (_ BitVec 64))) (size!30257 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61847)

(declare-datatypes ((List!20751 0))(
  ( (Nil!20748) (Cons!20747 (h!21909 (_ BitVec 64)) (t!29550 List!20751)) )
))
(declare-fun arrayNoDuplicates!0 (array!61847 (_ BitVec 32) List!20751) Bool)

(assert (=> b!983549 (= lt!436507 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20748))))

(declare-fun b!983550 () Bool)

(declare-fun res!658239 () Bool)

(assert (=> b!983550 (=> (not res!658239) (not e!554527))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983550 (= res!658239 (and (= (size!30256 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30257 _keys!1544) (size!30256 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983551 () Bool)

(declare-fun e!554526 () Bool)

(declare-fun e!554524 () Bool)

(assert (=> b!983551 (= e!554526 (and e!554524 mapRes!36434))))

(declare-fun condMapEmpty!36434 () Bool)

(declare-fun mapDefault!36434 () ValueCell!10987)

