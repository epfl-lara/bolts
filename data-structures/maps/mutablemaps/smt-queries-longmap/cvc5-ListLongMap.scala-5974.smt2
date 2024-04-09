; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77698 () Bool)

(assert start!77698)

(declare-fun b_free!16255 () Bool)

(declare-fun b_next!16255 () Bool)

(assert (=> start!77698 (= b_free!16255 (not b_next!16255))))

(declare-fun tp!57028 () Bool)

(declare-fun b_and!26681 () Bool)

(assert (=> start!77698 (= tp!57028 b_and!26681)))

(declare-fun b!905588 () Bool)

(declare-fun res!611225 () Bool)

(declare-fun e!507508 () Bool)

(assert (=> b!905588 (=> (not res!611225) (not e!507508))))

(declare-datatypes ((array!53376 0))(
  ( (array!53377 (arr!25643 (Array (_ BitVec 32) (_ BitVec 64))) (size!26103 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53376)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!905588 (= res!611225 (and (= (select (arr!25643 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905589 () Bool)

(declare-fun e!507507 () Bool)

(assert (=> b!905589 (= e!507507 true)))

(declare-datatypes ((V!29863 0))(
  ( (V!29864 (val!9387 Int)) )
))
(declare-datatypes ((tuple2!12234 0))(
  ( (tuple2!12235 (_1!6127 (_ BitVec 64)) (_2!6127 V!29863)) )
))
(declare-datatypes ((List!18099 0))(
  ( (Nil!18096) (Cons!18095 (h!19241 tuple2!12234) (t!25534 List!18099)) )
))
(declare-datatypes ((ListLongMap!10945 0))(
  ( (ListLongMap!10946 (toList!5488 List!18099)) )
))
(declare-fun lt!408608 () ListLongMap!10945)

(declare-fun lt!408611 () V!29863)

(declare-fun apply!465 (ListLongMap!10945 (_ BitVec 64)) V!29863)

(assert (=> b!905589 (= (apply!465 lt!408608 k!1033) lt!408611)))

(declare-datatypes ((ValueCell!8855 0))(
  ( (ValueCellFull!8855 (v!11892 V!29863)) (EmptyCell!8855) )
))
(declare-datatypes ((array!53378 0))(
  ( (array!53379 (arr!25644 (Array (_ BitVec 32) ValueCell!8855)) (size!26104 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53378)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29863)

(declare-datatypes ((Unit!30701 0))(
  ( (Unit!30702) )
))
(declare-fun lt!408607 () Unit!30701)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29863)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!16 (array!53376 array!53378 (_ BitVec 32) (_ BitVec 32) V!29863 V!29863 (_ BitVec 64) V!29863 (_ BitVec 32) Int) Unit!30701)

(assert (=> b!905589 (= lt!408607 (lemmaListMapApplyFromThenApplyFromZero!16 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408611 i!717 defaultEntry!1160))))

(declare-fun b!905590 () Bool)

(declare-fun res!611230 () Bool)

(assert (=> b!905590 (=> res!611230 e!507507)))

(declare-fun lt!408609 () ListLongMap!10945)

(assert (=> b!905590 (= res!611230 (not (= (apply!465 lt!408609 k!1033) lt!408611)))))

(declare-fun b!905591 () Bool)

(declare-fun res!611226 () Bool)

(declare-fun e!507506 () Bool)

(assert (=> b!905591 (=> (not res!611226) (not e!507506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53376 (_ BitVec 32)) Bool)

(assert (=> b!905591 (= res!611226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!611232 () Bool)

(assert (=> start!77698 (=> (not res!611232) (not e!507506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77698 (= res!611232 (validMask!0 mask!1756))))

(assert (=> start!77698 e!507506))

(declare-fun e!507505 () Bool)

(declare-fun array_inv!20066 (array!53378) Bool)

(assert (=> start!77698 (and (array_inv!20066 _values!1152) e!507505)))

(assert (=> start!77698 tp!57028))

(assert (=> start!77698 true))

(declare-fun tp_is_empty!18673 () Bool)

(assert (=> start!77698 tp_is_empty!18673))

(declare-fun array_inv!20067 (array!53376) Bool)

(assert (=> start!77698 (array_inv!20067 _keys!1386)))

(declare-fun mapIsEmpty!29722 () Bool)

(declare-fun mapRes!29722 () Bool)

(assert (=> mapIsEmpty!29722 mapRes!29722))

(declare-fun b!905592 () Bool)

(declare-fun e!507502 () Bool)

(assert (=> b!905592 (= e!507505 (and e!507502 mapRes!29722))))

(declare-fun condMapEmpty!29722 () Bool)

(declare-fun mapDefault!29722 () ValueCell!8855)

