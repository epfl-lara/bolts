; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40938 () Bool)

(assert start!40938)

(declare-fun b_free!10865 () Bool)

(declare-fun b_next!10865 () Bool)

(assert (=> start!40938 (= b_free!10865 (not b_next!10865))))

(declare-fun tp!38421 () Bool)

(declare-fun b_and!19025 () Bool)

(assert (=> start!40938 (= tp!38421 b_and!19025)))

(declare-fun b!454892 () Bool)

(declare-fun res!271249 () Bool)

(declare-fun e!266034 () Bool)

(assert (=> b!454892 (=> (not res!271249) (not e!266034))))

(declare-datatypes ((array!28175 0))(
  ( (array!28176 (arr!13528 (Array (_ BitVec 32) (_ BitVec 64))) (size!13880 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28175)

(declare-datatypes ((List!8152 0))(
  ( (Nil!8149) (Cons!8148 (h!9004 (_ BitVec 64)) (t!13988 List!8152)) )
))
(declare-fun arrayNoDuplicates!0 (array!28175 (_ BitVec 32) List!8152) Bool)

(assert (=> b!454892 (= res!271249 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8149))))

(declare-fun b!454893 () Bool)

(declare-fun e!266036 () Bool)

(assert (=> b!454893 (= e!266034 e!266036)))

(declare-fun res!271246 () Bool)

(assert (=> b!454893 (=> (not res!271246) (not e!266036))))

(declare-fun lt!206229 () array!28175)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28175 (_ BitVec 32)) Bool)

(assert (=> b!454893 (= res!271246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206229 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454893 (= lt!206229 (array!28176 (store (arr!13528 _keys!709) i!563 k!794) (size!13880 _keys!709)))))

(declare-fun b!454895 () Bool)

(declare-fun e!266032 () Bool)

(declare-fun tp_is_empty!12203 () Bool)

(assert (=> b!454895 (= e!266032 tp_is_empty!12203)))

(declare-fun b!454896 () Bool)

(declare-fun res!271250 () Bool)

(assert (=> b!454896 (=> (not res!271250) (not e!266034))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454896 (= res!271250 (validKeyInArray!0 k!794))))

(declare-fun b!454897 () Bool)

(declare-fun e!266031 () Bool)

(declare-fun mapRes!19945 () Bool)

(assert (=> b!454897 (= e!266031 (and e!266032 mapRes!19945))))

(declare-fun condMapEmpty!19945 () Bool)

(declare-datatypes ((V!17375 0))(
  ( (V!17376 (val!6146 Int)) )
))
(declare-datatypes ((ValueCell!5758 0))(
  ( (ValueCellFull!5758 (v!8408 V!17375)) (EmptyCell!5758) )
))
(declare-datatypes ((array!28177 0))(
  ( (array!28178 (arr!13529 (Array (_ BitVec 32) ValueCell!5758)) (size!13881 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28177)

(declare-fun mapDefault!19945 () ValueCell!5758)

