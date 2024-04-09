; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77776 () Bool)

(assert start!77776)

(declare-fun b_free!16333 () Bool)

(declare-fun b_next!16333 () Bool)

(assert (=> start!77776 (= b_free!16333 (not b_next!16333))))

(declare-fun tp!57262 () Bool)

(declare-fun b_and!26837 () Bool)

(assert (=> start!77776 (= tp!57262 b_and!26837)))

(declare-fun mapNonEmpty!29839 () Bool)

(declare-fun mapRes!29839 () Bool)

(declare-fun tp!57261 () Bool)

(declare-fun e!508440 () Bool)

(assert (=> mapNonEmpty!29839 (= mapRes!29839 (and tp!57261 e!508440))))

(declare-datatypes ((V!29967 0))(
  ( (V!29968 (val!9426 Int)) )
))
(declare-datatypes ((ValueCell!8894 0))(
  ( (ValueCellFull!8894 (v!11931 V!29967)) (EmptyCell!8894) )
))
(declare-datatypes ((array!53528 0))(
  ( (array!53529 (arr!25719 (Array (_ BitVec 32) ValueCell!8894)) (size!26179 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53528)

(declare-fun mapRest!29839 () (Array (_ BitVec 32) ValueCell!8894))

(declare-fun mapValue!29839 () ValueCell!8894)

(declare-fun mapKey!29839 () (_ BitVec 32))

(assert (=> mapNonEmpty!29839 (= (arr!25719 _values!1152) (store mapRest!29839 mapKey!29839 mapValue!29839))))

(declare-fun b!907187 () Bool)

(declare-fun res!612401 () Bool)

(declare-fun e!508439 () Bool)

(assert (=> b!907187 (=> res!612401 e!508439)))

(declare-datatypes ((tuple2!12296 0))(
  ( (tuple2!12297 (_1!6158 (_ BitVec 64)) (_2!6158 V!29967)) )
))
(declare-datatypes ((List!18156 0))(
  ( (Nil!18153) (Cons!18152 (h!19298 tuple2!12296) (t!25669 List!18156)) )
))
(declare-datatypes ((ListLongMap!11007 0))(
  ( (ListLongMap!11008 (toList!5519 List!18156)) )
))
(declare-fun lt!409196 () ListLongMap!11007)

(declare-fun lt!409193 () V!29967)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun apply!495 (ListLongMap!11007 (_ BitVec 64)) V!29967)

(assert (=> b!907187 (= res!612401 (not (= (apply!495 lt!409196 k!1033) lt!409193)))))

(declare-fun b!907188 () Bool)

(declare-fun e!508442 () Bool)

(declare-fun e!508445 () Bool)

(assert (=> b!907188 (= e!508442 e!508445)))

(declare-fun res!612400 () Bool)

(assert (=> b!907188 (=> (not res!612400) (not e!508445))))

(declare-fun lt!409195 () ListLongMap!11007)

(declare-fun contains!4527 (ListLongMap!11007 (_ BitVec 64)) Bool)

(assert (=> b!907188 (= res!612400 (contains!4527 lt!409195 k!1033))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29967)

(declare-datatypes ((array!53530 0))(
  ( (array!53531 (arr!25720 (Array (_ BitVec 32) (_ BitVec 64))) (size!26180 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53530)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29967)

(declare-fun getCurrentListMap!2751 (array!53530 array!53528 (_ BitVec 32) (_ BitVec 32) V!29967 V!29967 (_ BitVec 32) Int) ListLongMap!11007)

(assert (=> b!907188 (= lt!409195 (getCurrentListMap!2751 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907189 () Bool)

(assert (=> b!907189 (= e!508439 true)))

(assert (=> b!907189 (= (apply!495 lt!409195 k!1033) lt!409193)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((Unit!30765 0))(
  ( (Unit!30766) )
))
(declare-fun lt!409192 () Unit!30765)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!41 (array!53530 array!53528 (_ BitVec 32) (_ BitVec 32) V!29967 V!29967 (_ BitVec 64) V!29967 (_ BitVec 32) Int) Unit!30765)

(assert (=> b!907189 (= lt!409192 (lemmaListMapApplyFromThenApplyFromZero!41 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409193 i!717 defaultEntry!1160))))

(declare-fun mapIsEmpty!29839 () Bool)

(assert (=> mapIsEmpty!29839 mapRes!29839))

(declare-fun b!907190 () Bool)

(declare-fun res!612396 () Bool)

(assert (=> b!907190 (=> (not res!612396) (not e!508442))))

(assert (=> b!907190 (= res!612396 (and (= (size!26179 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26180 _keys!1386) (size!26179 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!907191 () Bool)

(declare-fun e!508444 () Bool)

(declare-fun tp_is_empty!18751 () Bool)

(assert (=> b!907191 (= e!508444 tp_is_empty!18751)))

(declare-fun b!907192 () Bool)

(declare-fun e!508443 () Bool)

(assert (=> b!907192 (= e!508443 e!508439)))

(declare-fun res!612399 () Bool)

(assert (=> b!907192 (=> res!612399 e!508439)))

(assert (=> b!907192 (= res!612399 (not (contains!4527 lt!409196 k!1033)))))

(assert (=> b!907192 (= lt!409196 (getCurrentListMap!2751 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun res!612397 () Bool)

(assert (=> start!77776 (=> (not res!612397) (not e!508442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77776 (= res!612397 (validMask!0 mask!1756))))

(assert (=> start!77776 e!508442))

(declare-fun e!508438 () Bool)

(declare-fun array_inv!20112 (array!53528) Bool)

(assert (=> start!77776 (and (array_inv!20112 _values!1152) e!508438)))

(assert (=> start!77776 tp!57262))

(assert (=> start!77776 true))

(assert (=> start!77776 tp_is_empty!18751))

(declare-fun array_inv!20113 (array!53530) Bool)

(assert (=> start!77776 (array_inv!20113 _keys!1386)))

(declare-fun b!907193 () Bool)

(declare-fun res!612393 () Bool)

(assert (=> b!907193 (=> (not res!612393) (not e!508445))))

(assert (=> b!907193 (= res!612393 (and (= (select (arr!25720 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907194 () Bool)

(assert (=> b!907194 (= e!508445 (not e!508443))))

(declare-fun res!612398 () Bool)

(assert (=> b!907194 (=> res!612398 e!508443)))

(assert (=> b!907194 (= res!612398 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26180 _keys!1386))))))

(declare-fun get!13545 (ValueCell!8894 V!29967) V!29967)

(declare-fun dynLambda!1367 (Int (_ BitVec 64)) V!29967)

(assert (=> b!907194 (= lt!409193 (get!13545 (select (arr!25719 _values!1152) i!717) (dynLambda!1367 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907194 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409194 () Unit!30765)

(declare-fun lemmaKeyInListMapIsInArray!240 (array!53530 array!53528 (_ BitVec 32) (_ BitVec 32) V!29967 V!29967 (_ BitVec 64) Int) Unit!30765)

(assert (=> b!907194 (= lt!409194 (lemmaKeyInListMapIsInArray!240 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!907195 () Bool)

(declare-fun res!612402 () Bool)

(assert (=> b!907195 (=> (not res!612402) (not e!508442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53530 (_ BitVec 32)) Bool)

(assert (=> b!907195 (= res!612402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!907196 () Bool)

(declare-fun res!612395 () Bool)

(assert (=> b!907196 (=> (not res!612395) (not e!508442))))

(declare-datatypes ((List!18157 0))(
  ( (Nil!18154) (Cons!18153 (h!19299 (_ BitVec 64)) (t!25670 List!18157)) )
))
(declare-fun arrayNoDuplicates!0 (array!53530 (_ BitVec 32) List!18157) Bool)

(assert (=> b!907196 (= res!612395 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18154))))

(declare-fun b!907197 () Bool)

(declare-fun res!612394 () Bool)

(assert (=> b!907197 (=> (not res!612394) (not e!508445))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!907197 (= res!612394 (inRange!0 i!717 mask!1756))))

(declare-fun b!907198 () Bool)

(assert (=> b!907198 (= e!508438 (and e!508444 mapRes!29839))))

(declare-fun condMapEmpty!29839 () Bool)

(declare-fun mapDefault!29839 () ValueCell!8894)

