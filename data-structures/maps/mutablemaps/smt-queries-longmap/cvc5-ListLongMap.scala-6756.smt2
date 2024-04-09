; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84768 () Bool)

(assert start!84768)

(declare-fun b_free!20095 () Bool)

(declare-fun b_next!20095 () Bool)

(assert (=> start!84768 (= b_free!20095 (not b_next!20095))))

(declare-fun tp!70085 () Bool)

(declare-fun b_and!32283 () Bool)

(assert (=> start!84768 (= tp!70085 b_and!32283)))

(declare-fun b!990828 () Bool)

(declare-fun res!662558 () Bool)

(declare-fun e!558753 () Bool)

(assert (=> b!990828 (=> (not res!662558) (not e!558753))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62571 0))(
  ( (array!62572 (arr!30132 (Array (_ BitVec 32) (_ BitVec 64))) (size!30612 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62571)

(declare-datatypes ((V!36065 0))(
  ( (V!36066 (val!11706 Int)) )
))
(declare-datatypes ((ValueCell!11174 0))(
  ( (ValueCellFull!11174 (v!14279 V!36065)) (EmptyCell!11174) )
))
(declare-datatypes ((array!62573 0))(
  ( (array!62574 (arr!30133 (Array (_ BitVec 32) ValueCell!11174)) (size!30613 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62573)

(assert (=> b!990828 (= res!662558 (and (= (size!30613 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30612 _keys!1544) (size!30613 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!37019 () Bool)

(declare-fun mapRes!37019 () Bool)

(declare-fun tp!70084 () Bool)

(declare-fun e!558757 () Bool)

(assert (=> mapNonEmpty!37019 (= mapRes!37019 (and tp!70084 e!558757))))

(declare-fun mapKey!37019 () (_ BitVec 32))

(declare-fun mapValue!37019 () ValueCell!11174)

(declare-fun mapRest!37019 () (Array (_ BitVec 32) ValueCell!11174))

(assert (=> mapNonEmpty!37019 (= (arr!30133 _values!1278) (store mapRest!37019 mapKey!37019 mapValue!37019))))

(declare-fun b!990829 () Bool)

(declare-fun e!558754 () Bool)

(assert (=> b!990829 (= e!558753 e!558754)))

(declare-fun res!662563 () Bool)

(assert (=> b!990829 (=> (not res!662563) (not e!558754))))

(declare-fun lt!439654 () Bool)

(assert (=> b!990829 (= res!662563 (and (or lt!439654 (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (or lt!439654 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (or (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not lt!439654))))))

(assert (=> b!990829 (= lt!439654 (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!990830 () Bool)

(declare-fun res!662562 () Bool)

(assert (=> b!990830 (=> (not res!662562) (not e!558753))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62571 (_ BitVec 32)) Bool)

(assert (=> b!990830 (= res!662562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!990831 () Bool)

(declare-fun res!662559 () Bool)

(assert (=> b!990831 (=> (not res!662559) (not e!558753))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!990831 (= res!662559 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30612 _keys!1544))))))

(declare-fun b!990832 () Bool)

(declare-fun res!662561 () Bool)

(assert (=> b!990832 (=> (not res!662561) (not e!558753))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!990832 (= res!662561 (validKeyInArray!0 (select (arr!30132 _keys!1544) from!1932)))))

(declare-fun res!662557 () Bool)

(assert (=> start!84768 (=> (not res!662557) (not e!558753))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84768 (= res!662557 (validMask!0 mask!1948))))

(assert (=> start!84768 e!558753))

(assert (=> start!84768 true))

(declare-fun tp_is_empty!23311 () Bool)

(assert (=> start!84768 tp_is_empty!23311))

(declare-fun e!558755 () Bool)

(declare-fun array_inv!23135 (array!62573) Bool)

(assert (=> start!84768 (and (array_inv!23135 _values!1278) e!558755)))

(assert (=> start!84768 tp!70085))

(declare-fun array_inv!23136 (array!62571) Bool)

(assert (=> start!84768 (array_inv!23136 _keys!1544)))

(declare-fun mapIsEmpty!37019 () Bool)

(assert (=> mapIsEmpty!37019 mapRes!37019))

(declare-fun b!990833 () Bool)

(declare-fun e!558752 () Bool)

(assert (=> b!990833 (= e!558755 (and e!558752 mapRes!37019))))

(declare-fun condMapEmpty!37019 () Bool)

(declare-fun mapDefault!37019 () ValueCell!11174)

