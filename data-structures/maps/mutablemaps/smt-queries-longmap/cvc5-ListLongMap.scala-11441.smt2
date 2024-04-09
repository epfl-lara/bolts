; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133476 () Bool)

(assert start!133476)

(declare-fun b!1559933 () Bool)

(declare-fun e!869233 () Bool)

(assert (=> b!1559933 (= e!869233 false)))

(declare-fun lt!670869 () Bool)

(declare-datatypes ((V!59577 0))(
  ( (V!59578 (val!19347 Int)) )
))
(declare-datatypes ((tuple2!25166 0))(
  ( (tuple2!25167 (_1!12593 (_ BitVec 64)) (_2!12593 V!59577)) )
))
(declare-datatypes ((List!36523 0))(
  ( (Nil!36520) (Cons!36519 (h!37966 tuple2!25166) (t!51263 List!36523)) )
))
(declare-datatypes ((ListLongMap!22613 0))(
  ( (ListLongMap!22614 (toList!11322 List!36523)) )
))
(declare-fun contains!10242 (ListLongMap!22613 (_ BitVec 64)) Bool)

(assert (=> b!1559933 (= lt!670869 (contains!10242 (ListLongMap!22614 Nil!36520) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!59166 () Bool)

(declare-fun mapRes!59166 () Bool)

(assert (=> mapIsEmpty!59166 mapRes!59166))

(declare-fun b!1559934 () Bool)

(declare-fun e!869237 () Bool)

(declare-fun tp_is_empty!38527 () Bool)

(assert (=> b!1559934 (= e!869237 tp_is_empty!38527)))

(declare-fun b!1559935 () Bool)

(declare-fun res!1066812 () Bool)

(assert (=> b!1559935 (=> (not res!1066812) (not e!869233))))

(assert (=> b!1559935 (= res!1066812 (not (contains!10242 (ListLongMap!22614 Nil!36520) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559936 () Bool)

(declare-fun res!1066814 () Bool)

(assert (=> b!1559936 (=> (not res!1066814) (not e!869233))))

(declare-datatypes ((array!103733 0))(
  ( (array!103734 (arr!50054 (Array (_ BitVec 32) (_ BitVec 64))) (size!50605 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103733)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103733 (_ BitVec 32)) Bool)

(assert (=> b!1559936 (= res!1066814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun res!1066813 () Bool)

(assert (=> start!133476 (=> (not res!1066813) (not e!869233))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133476 (= res!1066813 (validMask!0 mask!947))))

(assert (=> start!133476 e!869233))

(assert (=> start!133476 true))

(declare-fun array_inv!38831 (array!103733) Bool)

(assert (=> start!133476 (array_inv!38831 _keys!637)))

(declare-datatypes ((ValueCell!18233 0))(
  ( (ValueCellFull!18233 (v!22096 V!59577)) (EmptyCell!18233) )
))
(declare-datatypes ((array!103735 0))(
  ( (array!103736 (arr!50055 (Array (_ BitVec 32) ValueCell!18233)) (size!50606 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103735)

(declare-fun e!869236 () Bool)

(declare-fun array_inv!38832 (array!103735) Bool)

(assert (=> start!133476 (and (array_inv!38832 _values!487) e!869236)))

(declare-fun b!1559937 () Bool)

(assert (=> b!1559937 (= e!869236 (and e!869237 mapRes!59166))))

(declare-fun condMapEmpty!59166 () Bool)

(declare-fun mapDefault!59166 () ValueCell!18233)

