; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108460 () Bool)

(assert start!108460)

(declare-fun b_free!27971 () Bool)

(declare-fun b_next!27971 () Bool)

(assert (=> start!108460 (= b_free!27971 (not b_next!27971))))

(declare-fun tp!99024 () Bool)

(declare-fun b_and!46041 () Bool)

(assert (=> start!108460 (= tp!99024 b_and!46041)))

(declare-fun b!1279566 () Bool)

(declare-fun res!850074 () Bool)

(declare-fun e!731123 () Bool)

(assert (=> b!1279566 (=> (not res!850074) (not e!731123))))

(declare-datatypes ((array!84257 0))(
  ( (array!84258 (arr!40628 (Array (_ BitVec 32) (_ BitVec 64))) (size!41179 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84257)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84257 (_ BitVec 32)) Bool)

(assert (=> b!1279566 (= res!850074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279567 () Bool)

(declare-fun e!731122 () Bool)

(declare-fun tp_is_empty!33611 () Bool)

(assert (=> b!1279567 (= e!731122 tp_is_empty!33611)))

(declare-fun b!1279568 () Bool)

(declare-fun res!850075 () Bool)

(assert (=> b!1279568 (=> (not res!850075) (not e!731123))))

(declare-datatypes ((List!28959 0))(
  ( (Nil!28956) (Cons!28955 (h!30164 (_ BitVec 64)) (t!42506 List!28959)) )
))
(declare-fun arrayNoDuplicates!0 (array!84257 (_ BitVec 32) List!28959) Bool)

(assert (=> b!1279568 (= res!850075 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28956))))

(declare-fun res!850073 () Bool)

(assert (=> start!108460 (=> (not res!850073) (not e!731123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108460 (= res!850073 (validMask!0 mask!2175))))

(assert (=> start!108460 e!731123))

(assert (=> start!108460 tp_is_empty!33611))

(assert (=> start!108460 true))

(declare-datatypes ((V!49917 0))(
  ( (V!49918 (val!16880 Int)) )
))
(declare-datatypes ((ValueCell!15907 0))(
  ( (ValueCellFull!15907 (v!19478 V!49917)) (EmptyCell!15907) )
))
(declare-datatypes ((array!84259 0))(
  ( (array!84260 (arr!40629 (Array (_ BitVec 32) ValueCell!15907)) (size!41180 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84259)

(declare-fun e!731125 () Bool)

(declare-fun array_inv!30821 (array!84259) Bool)

(assert (=> start!108460 (and (array_inv!30821 _values!1445) e!731125)))

(declare-fun array_inv!30822 (array!84257) Bool)

(assert (=> start!108460 (array_inv!30822 _keys!1741)))

(assert (=> start!108460 tp!99024))

(declare-fun b!1279569 () Bool)

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1279569 (= e!731123 (bvsgt from!2144 (size!41179 _keys!1741)))))

(declare-fun mapNonEmpty!51968 () Bool)

(declare-fun mapRes!51968 () Bool)

(declare-fun tp!99023 () Bool)

(declare-fun e!731121 () Bool)

(assert (=> mapNonEmpty!51968 (= mapRes!51968 (and tp!99023 e!731121))))

(declare-fun mapRest!51968 () (Array (_ BitVec 32) ValueCell!15907))

(declare-fun mapValue!51968 () ValueCell!15907)

(declare-fun mapKey!51968 () (_ BitVec 32))

(assert (=> mapNonEmpty!51968 (= (arr!40629 _values!1445) (store mapRest!51968 mapKey!51968 mapValue!51968))))

(declare-fun b!1279570 () Bool)

(assert (=> b!1279570 (= e!731121 tp_is_empty!33611)))

(declare-fun b!1279571 () Bool)

(assert (=> b!1279571 (= e!731125 (and e!731122 mapRes!51968))))

(declare-fun condMapEmpty!51968 () Bool)

(declare-fun mapDefault!51968 () ValueCell!15907)

