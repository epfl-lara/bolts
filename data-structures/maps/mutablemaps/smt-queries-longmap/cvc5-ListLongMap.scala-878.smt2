; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20376 () Bool)

(assert start!20376)

(declare-fun b_free!5023 () Bool)

(declare-fun b_next!5023 () Bool)

(assert (=> start!20376 (= b_free!5023 (not b_next!5023))))

(declare-fun tp!18100 () Bool)

(declare-fun b_and!11787 () Bool)

(assert (=> start!20376 (= tp!18100 b_and!11787)))

(declare-fun b!200998 () Bool)

(declare-fun res!95955 () Bool)

(declare-fun e!131774 () Bool)

(assert (=> b!200998 (=> (not res!95955) (not e!131774))))

(declare-datatypes ((array!8986 0))(
  ( (array!8987 (arr!4243 (Array (_ BitVec 32) (_ BitVec 64))) (size!4568 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8986)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!200998 (= res!95955 (= (select (arr!4243 _keys!825) i!601) k!843))))

(declare-fun b!200999 () Bool)

(declare-fun res!95949 () Bool)

(assert (=> b!200999 (=> (not res!95949) (not e!131774))))

(declare-datatypes ((V!6153 0))(
  ( (V!6154 (val!2484 Int)) )
))
(declare-datatypes ((ValueCell!2096 0))(
  ( (ValueCellFull!2096 (v!4450 V!6153)) (EmptyCell!2096) )
))
(declare-datatypes ((array!8988 0))(
  ( (array!8989 (arr!4244 (Array (_ BitVec 32) ValueCell!2096)) (size!4569 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8988)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200999 (= res!95949 (and (= (size!4569 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4568 _keys!825) (size!4569 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201000 () Bool)

(declare-fun res!95953 () Bool)

(assert (=> b!201000 (=> (not res!95953) (not e!131774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201000 (= res!95953 (validKeyInArray!0 k!843))))

(declare-fun b!201001 () Bool)

(declare-fun e!131776 () Bool)

(assert (=> b!201001 (= e!131774 (not e!131776))))

(declare-fun res!95951 () Bool)

(assert (=> b!201001 (=> res!95951 e!131776)))

(assert (=> b!201001 (= res!95951 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3754 0))(
  ( (tuple2!3755 (_1!1887 (_ BitVec 64)) (_2!1887 V!6153)) )
))
(declare-datatypes ((List!2694 0))(
  ( (Nil!2691) (Cons!2690 (h!3332 tuple2!3754) (t!7633 List!2694)) )
))
(declare-datatypes ((ListLongMap!2681 0))(
  ( (ListLongMap!2682 (toList!1356 List!2694)) )
))
(declare-fun lt!99874 () ListLongMap!2681)

(declare-fun zeroValue!615 () V!6153)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6153)

(declare-fun getCurrentListMap!940 (array!8986 array!8988 (_ BitVec 32) (_ BitVec 32) V!6153 V!6153 (_ BitVec 32) Int) ListLongMap!2681)

(assert (=> b!201001 (= lt!99874 (getCurrentListMap!940 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99867 () array!8988)

(declare-fun lt!99862 () ListLongMap!2681)

(assert (=> b!201001 (= lt!99862 (getCurrentListMap!940 _keys!825 lt!99867 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99875 () ListLongMap!2681)

(declare-fun lt!99866 () ListLongMap!2681)

(assert (=> b!201001 (and (= lt!99875 lt!99866) (= lt!99866 lt!99875))))

(declare-fun lt!99877 () ListLongMap!2681)

(declare-fun lt!99863 () tuple2!3754)

(declare-fun +!373 (ListLongMap!2681 tuple2!3754) ListLongMap!2681)

(assert (=> b!201001 (= lt!99866 (+!373 lt!99877 lt!99863))))

(declare-fun v!520 () V!6153)

(assert (=> b!201001 (= lt!99863 (tuple2!3755 k!843 v!520))))

(declare-datatypes ((Unit!6053 0))(
  ( (Unit!6054) )
))
(declare-fun lt!99869 () Unit!6053)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!53 (array!8986 array!8988 (_ BitVec 32) (_ BitVec 32) V!6153 V!6153 (_ BitVec 32) (_ BitVec 64) V!6153 (_ BitVec 32) Int) Unit!6053)

(assert (=> b!201001 (= lt!99869 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!53 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!311 (array!8986 array!8988 (_ BitVec 32) (_ BitVec 32) V!6153 V!6153 (_ BitVec 32) Int) ListLongMap!2681)

(assert (=> b!201001 (= lt!99875 (getCurrentListMapNoExtraKeys!311 _keys!825 lt!99867 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201001 (= lt!99867 (array!8989 (store (arr!4244 _values!649) i!601 (ValueCellFull!2096 v!520)) (size!4569 _values!649)))))

(assert (=> b!201001 (= lt!99877 (getCurrentListMapNoExtraKeys!311 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!95950 () Bool)

(assert (=> start!20376 (=> (not res!95950) (not e!131774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20376 (= res!95950 (validMask!0 mask!1149))))

(assert (=> start!20376 e!131774))

(declare-fun e!131771 () Bool)

(declare-fun array_inv!2783 (array!8988) Bool)

(assert (=> start!20376 (and (array_inv!2783 _values!649) e!131771)))

(assert (=> start!20376 true))

(declare-fun tp_is_empty!4879 () Bool)

(assert (=> start!20376 tp_is_empty!4879))

(declare-fun array_inv!2784 (array!8986) Bool)

(assert (=> start!20376 (array_inv!2784 _keys!825)))

(assert (=> start!20376 tp!18100))

(declare-fun b!201002 () Bool)

(declare-fun res!95954 () Bool)

(assert (=> b!201002 (=> (not res!95954) (not e!131774))))

(declare-datatypes ((List!2695 0))(
  ( (Nil!2692) (Cons!2691 (h!3333 (_ BitVec 64)) (t!7634 List!2695)) )
))
(declare-fun arrayNoDuplicates!0 (array!8986 (_ BitVec 32) List!2695) Bool)

(assert (=> b!201002 (= res!95954 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2692))))

(declare-fun b!201003 () Bool)

(declare-fun e!131772 () Bool)

(assert (=> b!201003 (= e!131772 true)))

(declare-fun lt!99872 () tuple2!3754)

(declare-fun lt!99876 () ListLongMap!2681)

(declare-fun lt!99871 () ListLongMap!2681)

(assert (=> b!201003 (= (+!373 lt!99876 lt!99872) (+!373 lt!99871 lt!99863))))

(declare-fun lt!99865 () ListLongMap!2681)

(declare-fun lt!99864 () Unit!6053)

(declare-fun addCommutativeForDiffKeys!94 (ListLongMap!2681 (_ BitVec 64) V!6153 (_ BitVec 64) V!6153) Unit!6053)

(assert (=> b!201003 (= lt!99864 (addCommutativeForDiffKeys!94 lt!99865 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapIsEmpty!8387 () Bool)

(declare-fun mapRes!8387 () Bool)

(assert (=> mapIsEmpty!8387 mapRes!8387))

(declare-fun b!201004 () Bool)

(declare-fun res!95948 () Bool)

(assert (=> b!201004 (=> (not res!95948) (not e!131774))))

(assert (=> b!201004 (= res!95948 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4568 _keys!825))))))

(declare-fun b!201005 () Bool)

(declare-fun res!95956 () Bool)

(assert (=> b!201005 (=> (not res!95956) (not e!131774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8986 (_ BitVec 32)) Bool)

(assert (=> b!201005 (= res!95956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201006 () Bool)

(assert (=> b!201006 (= e!131776 e!131772)))

(declare-fun res!95952 () Bool)

(assert (=> b!201006 (=> res!95952 e!131772)))

(assert (=> b!201006 (= res!95952 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!99868 () ListLongMap!2681)

(assert (=> b!201006 (= lt!99868 lt!99876)))

(assert (=> b!201006 (= lt!99876 (+!373 lt!99865 lt!99863))))

(declare-fun lt!99870 () Unit!6053)

(assert (=> b!201006 (= lt!99870 (addCommutativeForDiffKeys!94 lt!99877 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!201006 (= lt!99862 (+!373 lt!99868 lt!99872))))

(declare-fun lt!99873 () tuple2!3754)

(assert (=> b!201006 (= lt!99868 (+!373 lt!99866 lt!99873))))

(assert (=> b!201006 (= lt!99874 lt!99871)))

(assert (=> b!201006 (= lt!99871 (+!373 lt!99865 lt!99872))))

(assert (=> b!201006 (= lt!99865 (+!373 lt!99877 lt!99873))))

(assert (=> b!201006 (= lt!99862 (+!373 (+!373 lt!99875 lt!99873) lt!99872))))

(assert (=> b!201006 (= lt!99872 (tuple2!3755 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201006 (= lt!99873 (tuple2!3755 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201007 () Bool)

(declare-fun e!131775 () Bool)

(assert (=> b!201007 (= e!131775 tp_is_empty!4879)))

(declare-fun b!201008 () Bool)

(declare-fun e!131770 () Bool)

(assert (=> b!201008 (= e!131771 (and e!131770 mapRes!8387))))

(declare-fun condMapEmpty!8387 () Bool)

(declare-fun mapDefault!8387 () ValueCell!2096)

