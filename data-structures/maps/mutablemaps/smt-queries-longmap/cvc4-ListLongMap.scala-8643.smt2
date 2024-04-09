; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105216 () Bool)

(assert start!105216)

(declare-fun b_free!26897 () Bool)

(declare-fun b_next!26897 () Bool)

(assert (=> start!105216 (= b_free!26897 (not b_next!26897))))

(declare-fun tp!94196 () Bool)

(declare-fun b_and!44721 () Bool)

(assert (=> start!105216 (= tp!94196 b_and!44721)))

(declare-fun b!1253291 () Bool)

(declare-fun e!712012 () Bool)

(assert (=> b!1253291 (= e!712012 true)))

(declare-datatypes ((V!47763 0))(
  ( (V!47764 (val!15962 Int)) )
))
(declare-datatypes ((tuple2!20744 0))(
  ( (tuple2!20745 (_1!10382 (_ BitVec 64)) (_2!10382 V!47763)) )
))
(declare-datatypes ((List!27992 0))(
  ( (Nil!27989) (Cons!27988 (h!29197 tuple2!20744) (t!41480 List!27992)) )
))
(declare-datatypes ((ListLongMap!18629 0))(
  ( (ListLongMap!18630 (toList!9330 List!27992)) )
))
(declare-fun lt!565859 () ListLongMap!18629)

(declare-fun lt!565860 () ListLongMap!18629)

(declare-fun -!2043 (ListLongMap!18629 (_ BitVec 64)) ListLongMap!18629)

(assert (=> b!1253291 (= lt!565859 (-!2043 lt!565860 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!565861 () ListLongMap!18629)

(declare-fun lt!565857 () ListLongMap!18629)

(assert (=> b!1253291 (= (-!2043 lt!565861 #b1000000000000000000000000000000000000000000000000000000000000000) lt!565857)))

(declare-datatypes ((Unit!41630 0))(
  ( (Unit!41631) )
))
(declare-fun lt!565862 () Unit!41630)

(declare-fun minValueBefore!43 () V!47763)

(declare-fun addThenRemoveForNewKeyIsSame!303 (ListLongMap!18629 (_ BitVec 64) V!47763) Unit!41630)

(assert (=> b!1253291 (= lt!565862 (addThenRemoveForNewKeyIsSame!303 lt!565857 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!565856 () ListLongMap!18629)

(declare-fun lt!565858 () ListLongMap!18629)

(assert (=> b!1253291 (and (= lt!565860 lt!565861) (= lt!565858 lt!565856))))

(declare-fun +!4134 (ListLongMap!18629 tuple2!20744) ListLongMap!18629)

(assert (=> b!1253291 (= lt!565861 (+!4134 lt!565857 (tuple2!20745 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47763)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47763)

(declare-datatypes ((array!81239 0))(
  ( (array!81240 (arr!39177 (Array (_ BitVec 32) (_ BitVec 64))) (size!39714 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81239)

(declare-datatypes ((ValueCell!15136 0))(
  ( (ValueCellFull!15136 (v!18660 V!47763)) (EmptyCell!15136) )
))
(declare-datatypes ((array!81241 0))(
  ( (array!81242 (arr!39178 (Array (_ BitVec 32) ValueCell!15136)) (size!39715 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81241)

(declare-fun getCurrentListMap!4521 (array!81239 array!81241 (_ BitVec 32) (_ BitVec 32) V!47763 V!47763 (_ BitVec 32) Int) ListLongMap!18629)

(assert (=> b!1253291 (= lt!565858 (getCurrentListMap!4521 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253291 (= lt!565860 (getCurrentListMap!4521 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253292 () Bool)

(declare-fun res!835818 () Bool)

(declare-fun e!712011 () Bool)

(assert (=> b!1253292 (=> (not res!835818) (not e!712011))))

(declare-datatypes ((List!27993 0))(
  ( (Nil!27990) (Cons!27989 (h!29198 (_ BitVec 64)) (t!41481 List!27993)) )
))
(declare-fun arrayNoDuplicates!0 (array!81239 (_ BitVec 32) List!27993) Bool)

(assert (=> b!1253292 (= res!835818 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27990))))

(declare-fun b!1253293 () Bool)

(declare-fun e!712016 () Bool)

(declare-fun tp_is_empty!31799 () Bool)

(assert (=> b!1253293 (= e!712016 tp_is_empty!31799)))

(declare-fun res!835816 () Bool)

(assert (=> start!105216 (=> (not res!835816) (not e!712011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105216 (= res!835816 (validMask!0 mask!1466))))

(assert (=> start!105216 e!712011))

(assert (=> start!105216 true))

(assert (=> start!105216 tp!94196))

(assert (=> start!105216 tp_is_empty!31799))

(declare-fun array_inv!29809 (array!81239) Bool)

(assert (=> start!105216 (array_inv!29809 _keys!1118)))

(declare-fun e!712014 () Bool)

(declare-fun array_inv!29810 (array!81241) Bool)

(assert (=> start!105216 (and (array_inv!29810 _values!914) e!712014)))

(declare-fun b!1253294 () Bool)

(declare-fun e!712015 () Bool)

(declare-fun mapRes!49474 () Bool)

(assert (=> b!1253294 (= e!712014 (and e!712015 mapRes!49474))))

(declare-fun condMapEmpty!49474 () Bool)

(declare-fun mapDefault!49474 () ValueCell!15136)

