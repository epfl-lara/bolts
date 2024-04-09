; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133816 () Bool)

(assert start!133816)

(declare-fun b!1564195 () Bool)

(declare-fun res!1069455 () Bool)

(declare-fun e!871836 () Bool)

(assert (=> b!1564195 (=> (not res!1069455) (not e!871836))))

(declare-datatypes ((array!104371 0))(
  ( (array!104372 (arr!50372 (Array (_ BitVec 32) (_ BitVec 64))) (size!50923 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104371)

(declare-datatypes ((List!36721 0))(
  ( (Nil!36718) (Cons!36717 (h!38164 (_ BitVec 64)) (t!51575 List!36721)) )
))
(declare-fun arrayNoDuplicates!0 (array!104371 (_ BitVec 32) List!36721) Bool)

(assert (=> b!1564195 (= res!1069455 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36718))))

(declare-fun b!1564196 () Bool)

(declare-fun res!1069454 () Bool)

(assert (=> b!1564196 (=> (not res!1069454) (not e!871836))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!60017 0))(
  ( (V!60018 (val!19512 Int)) )
))
(declare-datatypes ((ValueCell!18398 0))(
  ( (ValueCellFull!18398 (v!22261 V!60017)) (EmptyCell!18398) )
))
(declare-datatypes ((array!104373 0))(
  ( (array!104374 (arr!50373 (Array (_ BitVec 32) ValueCell!18398)) (size!50924 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104373)

(assert (=> b!1564196 (= res!1069454 (and (= (size!50924 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50923 _keys!637) (size!50924 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1564197 () Bool)

(assert (=> b!1564197 (= e!871836 false)))

(declare-fun lt!671949 () Bool)

(declare-datatypes ((tuple2!25334 0))(
  ( (tuple2!25335 (_1!12677 (_ BitVec 64)) (_2!12677 V!60017)) )
))
(declare-datatypes ((List!36722 0))(
  ( (Nil!36719) (Cons!36718 (h!38165 tuple2!25334) (t!51576 List!36722)) )
))
(declare-datatypes ((ListLongMap!22781 0))(
  ( (ListLongMap!22782 (toList!11406 List!36722)) )
))
(declare-fun contains!10327 (ListLongMap!22781 (_ BitVec 64)) Bool)

(assert (=> b!1564197 (= lt!671949 (contains!10327 (ListLongMap!22782 Nil!36719) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564198 () Bool)

(declare-fun res!1069456 () Bool)

(assert (=> b!1564198 (=> (not res!1069456) (not e!871836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104371 (_ BitVec 32)) Bool)

(assert (=> b!1564198 (= res!1069456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564199 () Bool)

(declare-fun e!871837 () Bool)

(declare-fun tp_is_empty!38857 () Bool)

(assert (=> b!1564199 (= e!871837 tp_is_empty!38857)))

(declare-fun mapIsEmpty!59664 () Bool)

(declare-fun mapRes!59664 () Bool)

(assert (=> mapIsEmpty!59664 mapRes!59664))

(declare-fun b!1564200 () Bool)

(declare-fun e!871835 () Bool)

(declare-fun e!871834 () Bool)

(assert (=> b!1564200 (= e!871835 (and e!871834 mapRes!59664))))

(declare-fun condMapEmpty!59664 () Bool)

(declare-fun mapDefault!59664 () ValueCell!18398)

