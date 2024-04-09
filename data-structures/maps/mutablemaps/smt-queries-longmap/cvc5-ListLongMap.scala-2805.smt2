; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40726 () Bool)

(assert start!40726)

(declare-fun b_free!10729 () Bool)

(declare-fun b_next!10729 () Bool)

(assert (=> start!40726 (= b_free!10729 (not b_next!10729))))

(declare-fun tp!38007 () Bool)

(declare-fun b_and!18755 () Bool)

(assert (=> start!40726 (= tp!38007 b_and!18755)))

(declare-datatypes ((V!17195 0))(
  ( (V!17196 (val!6078 Int)) )
))
(declare-fun minValue!515 () V!17195)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5690 0))(
  ( (ValueCellFull!5690 (v!8329 V!17195)) (EmptyCell!5690) )
))
(declare-datatypes ((array!27901 0))(
  ( (array!27902 (arr!13393 (Array (_ BitVec 32) ValueCell!5690)) (size!13745 (_ BitVec 32))) )
))
(declare-fun lt!204653 () array!27901)

(declare-fun _values!549 () array!27901)

(declare-fun zeroValue!515 () V!17195)

(declare-datatypes ((array!27903 0))(
  ( (array!27904 (arr!13394 (Array (_ BitVec 32) (_ BitVec 64))) (size!13746 (_ BitVec 32))) )
))
(declare-fun lt!204655 () array!27903)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun bm!29773 () Bool)

(declare-fun _keys!709 () array!27903)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7930 0))(
  ( (tuple2!7931 (_1!3975 (_ BitVec 64)) (_2!3975 V!17195)) )
))
(declare-datatypes ((List!8039 0))(
  ( (Nil!8036) (Cons!8035 (h!8891 tuple2!7930) (t!13809 List!8039)) )
))
(declare-datatypes ((ListLongMap!6857 0))(
  ( (ListLongMap!6858 (toList!3444 List!8039)) )
))
(declare-fun call!29777 () ListLongMap!6857)

(declare-fun c!55925 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1622 (array!27903 array!27901 (_ BitVec 32) (_ BitVec 32) V!17195 V!17195 (_ BitVec 32) Int) ListLongMap!6857)

(assert (=> bm!29773 (= call!29777 (getCurrentListMapNoExtraKeys!1622 (ite c!55925 _keys!709 lt!204655) (ite c!55925 _values!549 lt!204653) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450538 () Bool)

(declare-fun res!268269 () Bool)

(declare-fun e!263994 () Bool)

(assert (=> b!450538 (=> (not res!268269) (not e!263994))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450538 (= res!268269 (validKeyInArray!0 k!794))))

(declare-fun b!450539 () Bool)

(declare-fun e!263992 () Bool)

(declare-fun e!263989 () Bool)

(assert (=> b!450539 (= e!263992 e!263989)))

(declare-fun res!268263 () Bool)

(assert (=> b!450539 (=> (not res!268263) (not e!263989))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450539 (= res!268263 (= from!863 i!563))))

(declare-fun lt!204651 () ListLongMap!6857)

(assert (=> b!450539 (= lt!204651 (getCurrentListMapNoExtraKeys!1622 lt!204655 lt!204653 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17195)

(assert (=> b!450539 (= lt!204653 (array!27902 (store (arr!13393 _values!549) i!563 (ValueCellFull!5690 v!412)) (size!13745 _values!549)))))

(declare-fun lt!204654 () ListLongMap!6857)

(assert (=> b!450539 (= lt!204654 (getCurrentListMapNoExtraKeys!1622 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!450540 () Bool)

(declare-fun e!263993 () Bool)

(declare-fun tp_is_empty!12067 () Bool)

(assert (=> b!450540 (= e!263993 tp_is_empty!12067)))

(declare-fun b!450542 () Bool)

(declare-fun res!268272 () Bool)

(assert (=> b!450542 (=> (not res!268272) (not e!263992))))

(declare-datatypes ((List!8040 0))(
  ( (Nil!8037) (Cons!8036 (h!8892 (_ BitVec 64)) (t!13810 List!8040)) )
))
(declare-fun arrayNoDuplicates!0 (array!27903 (_ BitVec 32) List!8040) Bool)

(assert (=> b!450542 (= res!268272 (arrayNoDuplicates!0 lt!204655 #b00000000000000000000000000000000 Nil!8037))))

(declare-fun b!450543 () Bool)

(declare-fun res!268273 () Bool)

(assert (=> b!450543 (=> (not res!268273) (not e!263994))))

(declare-fun arrayContainsKey!0 (array!27903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450543 (= res!268273 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!450544 () Bool)

(assert (=> b!450544 (= e!263994 e!263992)))

(declare-fun res!268274 () Bool)

(assert (=> b!450544 (=> (not res!268274) (not e!263992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27903 (_ BitVec 32)) Bool)

(assert (=> b!450544 (= res!268274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204655 mask!1025))))

(assert (=> b!450544 (= lt!204655 (array!27904 (store (arr!13394 _keys!709) i!563 k!794) (size!13746 _keys!709)))))

(declare-fun b!450545 () Bool)

(declare-fun e!263987 () Bool)

(declare-fun e!263991 () Bool)

(declare-fun mapRes!19734 () Bool)

(assert (=> b!450545 (= e!263987 (and e!263991 mapRes!19734))))

(declare-fun condMapEmpty!19734 () Bool)

(declare-fun mapDefault!19734 () ValueCell!5690)

