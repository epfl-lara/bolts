; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113354 () Bool)

(assert start!113354)

(declare-fun b_free!31369 () Bool)

(declare-fun b_next!31369 () Bool)

(assert (=> start!113354 (= b_free!31369 (not b_next!31369))))

(declare-fun tp!109913 () Bool)

(declare-fun b_and!50601 () Bool)

(assert (=> start!113354 (= tp!109913 b_and!50601)))

(declare-fun b!1344453 () Bool)

(declare-fun e!765219 () Bool)

(declare-fun tp_is_empty!37369 () Bool)

(assert (=> b!1344453 (= e!765219 tp_is_empty!37369)))

(declare-fun b!1344454 () Bool)

(declare-fun res!892102 () Bool)

(declare-fun e!765221 () Bool)

(assert (=> b!1344454 (=> (not res!892102) (not e!765221))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91535 0))(
  ( (array!91536 (arr!44219 (Array (_ BitVec 32) (_ BitVec 64))) (size!44770 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91535)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1344454 (= res!892102 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44770 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344455 () Bool)

(declare-fun e!765218 () Bool)

(declare-fun mapRes!57760 () Bool)

(assert (=> b!1344455 (= e!765218 (and e!765219 mapRes!57760))))

(declare-fun condMapEmpty!57760 () Bool)

(declare-datatypes ((V!54929 0))(
  ( (V!54930 (val!18759 Int)) )
))
(declare-datatypes ((ValueCell!17786 0))(
  ( (ValueCellFull!17786 (v!21405 V!54929)) (EmptyCell!17786) )
))
(declare-datatypes ((array!91537 0))(
  ( (array!91538 (arr!44220 (Array (_ BitVec 32) ValueCell!17786)) (size!44771 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91537)

(declare-fun mapDefault!57760 () ValueCell!17786)

