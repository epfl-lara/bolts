; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42402 () Bool)

(assert start!42402)

(declare-fun b_free!11869 () Bool)

(declare-fun b_next!11869 () Bool)

(assert (=> start!42402 (= b_free!11869 (not b_next!11869))))

(declare-fun tp!41640 () Bool)

(declare-fun b_and!20343 () Bool)

(assert (=> start!42402 (= tp!41640 b_and!20343)))

(declare-fun b!472805 () Bool)

(declare-fun e!277320 () Bool)

(declare-fun e!277318 () Bool)

(assert (=> b!472805 (= e!277320 (not e!277318))))

(declare-fun res!282481 () Bool)

(assert (=> b!472805 (=> res!282481 e!277318)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472805 (= res!282481 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18835 0))(
  ( (V!18836 (val!6693 Int)) )
))
(declare-datatypes ((tuple2!8806 0))(
  ( (tuple2!8807 (_1!4413 (_ BitVec 64)) (_2!4413 V!18835)) )
))
(declare-datatypes ((List!8922 0))(
  ( (Nil!8919) (Cons!8918 (h!9774 tuple2!8806) (t!14900 List!8922)) )
))
(declare-datatypes ((ListLongMap!7733 0))(
  ( (ListLongMap!7734 (toList!3882 List!8922)) )
))
(declare-fun lt!214670 () ListLongMap!7733)

(declare-fun lt!214667 () ListLongMap!7733)

(assert (=> b!472805 (= lt!214670 lt!214667)))

(declare-fun minValueBefore!38 () V!18835)

(declare-datatypes ((Unit!13885 0))(
  ( (Unit!13886) )
))
(declare-fun lt!214666 () Unit!13885)

(declare-fun zeroValue!794 () V!18835)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30317 0))(
  ( (array!30318 (arr!14575 (Array (_ BitVec 32) (_ BitVec 64))) (size!14927 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30317)

(declare-datatypes ((ValueCell!6305 0))(
  ( (ValueCellFull!6305 (v!8980 V!18835)) (EmptyCell!6305) )
))
(declare-datatypes ((array!30319 0))(
  ( (array!30320 (arr!14576 (Array (_ BitVec 32) ValueCell!6305)) (size!14928 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30319)

(declare-fun minValueAfter!38 () V!18835)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!236 (array!30317 array!30319 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18835 V!18835 V!18835 V!18835 (_ BitVec 32) Int) Unit!13885)

(assert (=> b!472805 (= lt!214666 (lemmaNoChangeToArrayThenSameMapNoExtras!236 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2041 (array!30317 array!30319 (_ BitVec 32) (_ BitVec 32) V!18835 V!18835 (_ BitVec 32) Int) ListLongMap!7733)

(assert (=> b!472805 (= lt!214667 (getCurrentListMapNoExtraKeys!2041 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472805 (= lt!214670 (getCurrentListMapNoExtraKeys!2041 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472806 () Bool)

(declare-fun e!277316 () Bool)

(declare-fun e!277317 () Bool)

(declare-fun mapRes!21658 () Bool)

(assert (=> b!472806 (= e!277316 (and e!277317 mapRes!21658))))

(declare-fun condMapEmpty!21658 () Bool)

(declare-fun mapDefault!21658 () ValueCell!6305)

