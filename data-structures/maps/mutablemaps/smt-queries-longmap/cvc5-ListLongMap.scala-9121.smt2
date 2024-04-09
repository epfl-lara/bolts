; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109546 () Bool)

(assert start!109546)

(declare-fun b_free!28999 () Bool)

(declare-fun b_next!28999 () Bool)

(assert (=> start!109546 (= b_free!28999 (not b_next!28999))))

(declare-fun tp!102117 () Bool)

(declare-fun b_and!47099 () Bool)

(assert (=> start!109546 (= tp!102117 b_and!47099)))

(declare-fun mapIsEmpty!53519 () Bool)

(declare-fun mapRes!53519 () Bool)

(assert (=> mapIsEmpty!53519 mapRes!53519))

(declare-fun b!1296925 () Bool)

(declare-fun res!862006 () Bool)

(declare-fun e!739942 () Bool)

(assert (=> b!1296925 (=> (not res!862006) (not e!739942))))

(declare-datatypes ((array!86255 0))(
  ( (array!86256 (arr!41624 (Array (_ BitVec 32) (_ BitVec 64))) (size!42175 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86255)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86255 (_ BitVec 32)) Bool)

(assert (=> b!1296925 (= res!862006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53519 () Bool)

(declare-fun tp!102116 () Bool)

(declare-fun e!739939 () Bool)

(assert (=> mapNonEmpty!53519 (= mapRes!53519 (and tp!102116 e!739939))))

(declare-datatypes ((V!51289 0))(
  ( (V!51290 (val!17394 Int)) )
))
(declare-datatypes ((ValueCell!16421 0))(
  ( (ValueCellFull!16421 (v!19995 V!51289)) (EmptyCell!16421) )
))
(declare-fun mapValue!53519 () ValueCell!16421)

(declare-fun mapKey!53519 () (_ BitVec 32))

(declare-datatypes ((array!86257 0))(
  ( (array!86258 (arr!41625 (Array (_ BitVec 32) ValueCell!16421)) (size!42176 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86257)

(declare-fun mapRest!53519 () (Array (_ BitVec 32) ValueCell!16421))

(assert (=> mapNonEmpty!53519 (= (arr!41625 _values!1445) (store mapRest!53519 mapKey!53519 mapValue!53519))))

(declare-fun b!1296926 () Bool)

(declare-fun tp_is_empty!34639 () Bool)

(assert (=> b!1296926 (= e!739939 tp_is_empty!34639)))

(declare-fun b!1296927 () Bool)

(declare-fun e!739941 () Bool)

(declare-fun e!739938 () Bool)

(assert (=> b!1296927 (= e!739941 (and e!739938 mapRes!53519))))

(declare-fun condMapEmpty!53519 () Bool)

(declare-fun mapDefault!53519 () ValueCell!16421)

