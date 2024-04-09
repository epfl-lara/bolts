; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133770 () Bool)

(assert start!133770)

(declare-fun b_free!32101 () Bool)

(declare-fun b_next!32101 () Bool)

(assert (=> start!133770 (= b_free!32101 (not b_next!32101))))

(declare-fun tp!113508 () Bool)

(declare-fun b_and!51681 () Bool)

(assert (=> start!133770 (= tp!113508 b_and!51681)))

(declare-fun b!1563658 () Bool)

(declare-fun res!1069098 () Bool)

(declare-fun e!871515 () Bool)

(assert (=> b!1563658 (=> (not res!1069098) (not e!871515))))

(declare-datatypes ((array!104303 0))(
  ( (array!104304 (arr!50339 (Array (_ BitVec 32) (_ BitVec 64))) (size!50890 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104303)

(declare-datatypes ((List!36699 0))(
  ( (Nil!36696) (Cons!36695 (h!38142 (_ BitVec 64)) (t!51553 List!36699)) )
))
(declare-fun arrayNoDuplicates!0 (array!104303 (_ BitVec 32) List!36699) Bool)

(assert (=> b!1563658 (= res!1069098 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36696))))

(declare-fun res!1069100 () Bool)

(assert (=> start!133770 (=> (not res!1069100) (not e!871515))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133770 (= res!1069100 (validMask!0 mask!947))))

(assert (=> start!133770 e!871515))

(assert (=> start!133770 tp!113508))

(declare-fun tp_is_empty!38821 () Bool)

(assert (=> start!133770 tp_is_empty!38821))

(assert (=> start!133770 true))

(declare-fun array_inv!39051 (array!104303) Bool)

(assert (=> start!133770 (array_inv!39051 _keys!637)))

(declare-datatypes ((V!59969 0))(
  ( (V!59970 (val!19494 Int)) )
))
(declare-datatypes ((ValueCell!18380 0))(
  ( (ValueCellFull!18380 (v!22243 V!59969)) (EmptyCell!18380) )
))
(declare-datatypes ((array!104305 0))(
  ( (array!104306 (arr!50340 (Array (_ BitVec 32) ValueCell!18380)) (size!50891 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104305)

(declare-fun e!871517 () Bool)

(declare-fun array_inv!39052 (array!104305) Bool)

(assert (=> start!133770 (and (array_inv!39052 _values!487) e!871517)))

(declare-fun b!1563659 () Bool)

(declare-fun res!1069099 () Bool)

(assert (=> b!1563659 (=> (not res!1069099) (not e!871515))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104303 (_ BitVec 32)) Bool)

(assert (=> b!1563659 (= res!1069099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563660 () Bool)

(declare-fun e!871514 () Bool)

(assert (=> b!1563660 (= e!871514 tp_is_empty!38821)))

(declare-fun mapNonEmpty!59607 () Bool)

(declare-fun mapRes!59607 () Bool)

(declare-fun tp!113509 () Bool)

(declare-fun e!871513 () Bool)

(assert (=> mapNonEmpty!59607 (= mapRes!59607 (and tp!113509 e!871513))))

(declare-fun mapValue!59607 () ValueCell!18380)

(declare-fun mapRest!59607 () (Array (_ BitVec 32) ValueCell!18380))

(declare-fun mapKey!59607 () (_ BitVec 32))

(assert (=> mapNonEmpty!59607 (= (arr!50340 _values!487) (store mapRest!59607 mapKey!59607 mapValue!59607))))

(declare-fun b!1563661 () Bool)

(assert (=> b!1563661 (= e!871517 (and e!871514 mapRes!59607))))

(declare-fun condMapEmpty!59607 () Bool)

(declare-fun mapDefault!59607 () ValueCell!18380)

