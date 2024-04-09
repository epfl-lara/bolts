; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84660 () Bool)

(assert start!84660)

(declare-fun b_free!20057 () Bool)

(declare-fun b_next!20057 () Bool)

(assert (=> start!84660 (= b_free!20057 (not b_next!20057))))

(declare-fun tp!69964 () Bool)

(declare-fun b_and!32207 () Bool)

(assert (=> start!84660 (= tp!69964 b_and!32207)))

(declare-fun b!989645 () Bool)

(declare-fun e!558074 () Bool)

(declare-fun tp_is_empty!23273 () Bool)

(assert (=> b!989645 (= e!558074 tp_is_empty!23273)))

(declare-fun mapNonEmpty!36955 () Bool)

(declare-fun mapRes!36955 () Bool)

(declare-fun tp!69963 () Bool)

(declare-fun e!558070 () Bool)

(assert (=> mapNonEmpty!36955 (= mapRes!36955 (and tp!69963 e!558070))))

(declare-datatypes ((V!36013 0))(
  ( (V!36014 (val!11687 Int)) )
))
(declare-datatypes ((ValueCell!11155 0))(
  ( (ValueCellFull!11155 (v!14257 V!36013)) (EmptyCell!11155) )
))
(declare-datatypes ((array!62495 0))(
  ( (array!62496 (arr!30096 (Array (_ BitVec 32) ValueCell!11155)) (size!30576 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62495)

(declare-fun mapKey!36955 () (_ BitVec 32))

(declare-fun mapRest!36955 () (Array (_ BitVec 32) ValueCell!11155))

(declare-fun mapValue!36955 () ValueCell!11155)

(assert (=> mapNonEmpty!36955 (= (arr!30096 _values!1278) (store mapRest!36955 mapKey!36955 mapValue!36955))))

(declare-fun b!989646 () Bool)

(declare-fun res!661894 () Bool)

(declare-fun e!558071 () Bool)

(assert (=> b!989646 (=> (not res!661894) (not e!558071))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!989646 (= res!661894 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!989647 () Bool)

(declare-fun e!558072 () Bool)

(assert (=> b!989647 (= e!558072 (and e!558074 mapRes!36955))))

(declare-fun condMapEmpty!36955 () Bool)

(declare-fun mapDefault!36955 () ValueCell!11155)

