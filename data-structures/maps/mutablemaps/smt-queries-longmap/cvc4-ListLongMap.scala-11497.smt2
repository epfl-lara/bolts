; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133826 () Bool)

(assert start!133826)

(declare-fun b!1564330 () Bool)

(declare-fun e!871910 () Bool)

(declare-fun tp_is_empty!38867 () Bool)

(assert (=> b!1564330 (= e!871910 tp_is_empty!38867)))

(declare-fun b!1564332 () Bool)

(declare-fun res!1069546 () Bool)

(declare-fun e!871913 () Bool)

(assert (=> b!1564332 (=> (not res!1069546) (not e!871913))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104391 0))(
  ( (array!104392 (arr!50382 (Array (_ BitVec 32) (_ BitVec 64))) (size!50933 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104391)

(declare-datatypes ((V!60029 0))(
  ( (V!60030 (val!19517 Int)) )
))
(declare-datatypes ((ValueCell!18403 0))(
  ( (ValueCellFull!18403 (v!22266 V!60029)) (EmptyCell!18403) )
))
(declare-datatypes ((array!104393 0))(
  ( (array!104394 (arr!50383 (Array (_ BitVec 32) ValueCell!18403)) (size!50934 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104393)

(assert (=> b!1564332 (= res!1069546 (and (= (size!50934 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50933 _keys!637) (size!50934 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1564333 () Bool)

(declare-fun res!1069547 () Bool)

(assert (=> b!1564333 (=> (not res!1069547) (not e!871913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104391 (_ BitVec 32)) Bool)

(assert (=> b!1564333 (= res!1069547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564334 () Bool)

(declare-fun res!1069542 () Bool)

(assert (=> b!1564334 (=> (not res!1069542) (not e!871913))))

(declare-datatypes ((tuple2!25344 0))(
  ( (tuple2!25345 (_1!12682 (_ BitVec 64)) (_2!12682 V!60029)) )
))
(declare-datatypes ((List!36730 0))(
  ( (Nil!36727) (Cons!36726 (h!38173 tuple2!25344) (t!51584 List!36730)) )
))
(declare-datatypes ((ListLongMap!22791 0))(
  ( (ListLongMap!22792 (toList!11411 List!36730)) )
))
(declare-fun contains!10332 (ListLongMap!22791 (_ BitVec 64)) Bool)

(assert (=> b!1564334 (= res!1069542 (not (contains!10332 (ListLongMap!22792 Nil!36727) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1564335 () Bool)

(declare-fun e!871912 () Bool)

(declare-fun e!871911 () Bool)

(declare-fun mapRes!59679 () Bool)

(assert (=> b!1564335 (= e!871912 (and e!871911 mapRes!59679))))

(declare-fun condMapEmpty!59679 () Bool)

(declare-fun mapDefault!59679 () ValueCell!18403)

