; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20512 () Bool)

(assert start!20512)

(declare-fun b_free!5159 () Bool)

(declare-fun b_next!5159 () Bool)

(assert (=> start!20512 (= b_free!5159 (not b_next!5159))))

(declare-fun tp!18509 () Bool)

(declare-fun b_and!11923 () Bool)

(assert (=> start!20512 (= tp!18509 b_and!11923)))

(declare-fun b!203455 () Bool)

(declare-fun res!97793 () Bool)

(declare-fun e!133202 () Bool)

(assert (=> b!203455 (=> (not res!97793) (not e!133202))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203455 (= res!97793 (validKeyInArray!0 k!843))))

(declare-fun res!97799 () Bool)

(assert (=> start!20512 (=> (not res!97799) (not e!133202))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20512 (= res!97799 (validMask!0 mask!1149))))

(assert (=> start!20512 e!133202))

(declare-datatypes ((V!6333 0))(
  ( (V!6334 (val!2552 Int)) )
))
(declare-datatypes ((ValueCell!2164 0))(
  ( (ValueCellFull!2164 (v!4518 V!6333)) (EmptyCell!2164) )
))
(declare-datatypes ((array!9252 0))(
  ( (array!9253 (arr!4376 (Array (_ BitVec 32) ValueCell!2164)) (size!4701 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9252)

(declare-fun e!133200 () Bool)

(declare-fun array_inv!2883 (array!9252) Bool)

(assert (=> start!20512 (and (array_inv!2883 _values!649) e!133200)))

(assert (=> start!20512 true))

(declare-fun tp_is_empty!5015 () Bool)

(assert (=> start!20512 tp_is_empty!5015))

(declare-datatypes ((array!9254 0))(
  ( (array!9255 (arr!4377 (Array (_ BitVec 32) (_ BitVec 64))) (size!4702 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9254)

(declare-fun array_inv!2884 (array!9254) Bool)

(assert (=> start!20512 (array_inv!2884 _keys!825)))

(assert (=> start!20512 tp!18509))

(declare-fun b!203456 () Bool)

(declare-fun res!97795 () Bool)

(assert (=> b!203456 (=> (not res!97795) (not e!133202))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203456 (= res!97795 (= (select (arr!4377 _keys!825) i!601) k!843))))

(declare-fun b!203457 () Bool)

(declare-fun e!133203 () Bool)

(assert (=> b!203457 (= e!133202 (not e!133203))))

(declare-fun res!97801 () Bool)

(assert (=> b!203457 (=> res!97801 e!133203)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203457 (= res!97801 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3870 0))(
  ( (tuple2!3871 (_1!1945 (_ BitVec 64)) (_2!1945 V!6333)) )
))
(declare-datatypes ((List!2795 0))(
  ( (Nil!2792) (Cons!2791 (h!3433 tuple2!3870) (t!7734 List!2795)) )
))
(declare-datatypes ((ListLongMap!2797 0))(
  ( (ListLongMap!2798 (toList!1414 List!2795)) )
))
(declare-fun lt!102702 () ListLongMap!2797)

(declare-fun zeroValue!615 () V!6333)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6333)

(declare-fun getCurrentListMap!984 (array!9254 array!9252 (_ BitVec 32) (_ BitVec 32) V!6333 V!6333 (_ BitVec 32) Int) ListLongMap!2797)

(assert (=> b!203457 (= lt!102702 (getCurrentListMap!984 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102704 () ListLongMap!2797)

(declare-fun lt!102708 () array!9252)

(assert (=> b!203457 (= lt!102704 (getCurrentListMap!984 _keys!825 lt!102708 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102706 () ListLongMap!2797)

(declare-fun lt!102700 () ListLongMap!2797)

(assert (=> b!203457 (and (= lt!102706 lt!102700) (= lt!102700 lt!102706))))

(declare-fun lt!102707 () ListLongMap!2797)

(declare-fun lt!102698 () tuple2!3870)

(declare-fun +!431 (ListLongMap!2797 tuple2!3870) ListLongMap!2797)

(assert (=> b!203457 (= lt!102700 (+!431 lt!102707 lt!102698))))

(declare-fun v!520 () V!6333)

(assert (=> b!203457 (= lt!102698 (tuple2!3871 k!843 v!520))))

(declare-datatypes ((Unit!6163 0))(
  ( (Unit!6164) )
))
(declare-fun lt!102709 () Unit!6163)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!97 (array!9254 array!9252 (_ BitVec 32) (_ BitVec 32) V!6333 V!6333 (_ BitVec 32) (_ BitVec 64) V!6333 (_ BitVec 32) Int) Unit!6163)

(assert (=> b!203457 (= lt!102709 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!97 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!355 (array!9254 array!9252 (_ BitVec 32) (_ BitVec 32) V!6333 V!6333 (_ BitVec 32) Int) ListLongMap!2797)

(assert (=> b!203457 (= lt!102706 (getCurrentListMapNoExtraKeys!355 _keys!825 lt!102708 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203457 (= lt!102708 (array!9253 (store (arr!4376 _values!649) i!601 (ValueCellFull!2164 v!520)) (size!4701 _values!649)))))

(assert (=> b!203457 (= lt!102707 (getCurrentListMapNoExtraKeys!355 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8591 () Bool)

(declare-fun mapRes!8591 () Bool)

(assert (=> mapIsEmpty!8591 mapRes!8591))

(declare-fun b!203458 () Bool)

(declare-fun res!97798 () Bool)

(assert (=> b!203458 (=> (not res!97798) (not e!133202))))

(assert (=> b!203458 (= res!97798 (and (= (size!4701 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4702 _keys!825) (size!4701 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203459 () Bool)

(declare-fun e!133201 () Bool)

(assert (=> b!203459 (= e!133201 true)))

(declare-fun lt!102705 () ListLongMap!2797)

(declare-fun lt!102701 () ListLongMap!2797)

(assert (=> b!203459 (= lt!102705 (+!431 lt!102701 lt!102698))))

(declare-fun lt!102699 () Unit!6163)

(declare-fun addCommutativeForDiffKeys!143 (ListLongMap!2797 (_ BitVec 64) V!6333 (_ BitVec 64) V!6333) Unit!6163)

(assert (=> b!203459 (= lt!102699 (addCommutativeForDiffKeys!143 lt!102707 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203460 () Bool)

(declare-fun e!133198 () Bool)

(assert (=> b!203460 (= e!133198 tp_is_empty!5015)))

(declare-fun b!203461 () Bool)

(declare-fun res!97796 () Bool)

(assert (=> b!203461 (=> (not res!97796) (not e!133202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9254 (_ BitVec 32)) Bool)

(assert (=> b!203461 (= res!97796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203462 () Bool)

(declare-fun res!97800 () Bool)

(assert (=> b!203462 (=> (not res!97800) (not e!133202))))

(assert (=> b!203462 (= res!97800 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4702 _keys!825))))))

(declare-fun b!203463 () Bool)

(declare-fun e!133204 () Bool)

(assert (=> b!203463 (= e!133204 tp_is_empty!5015)))

(declare-fun b!203464 () Bool)

(assert (=> b!203464 (= e!133203 e!133201)))

(declare-fun res!97797 () Bool)

(assert (=> b!203464 (=> res!97797 e!133201)))

(assert (=> b!203464 (= res!97797 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!203464 (= lt!102704 lt!102705)))

(declare-fun lt!102703 () tuple2!3870)

(assert (=> b!203464 (= lt!102705 (+!431 lt!102700 lt!102703))))

(assert (=> b!203464 (= lt!102702 lt!102701)))

(assert (=> b!203464 (= lt!102701 (+!431 lt!102707 lt!102703))))

(assert (=> b!203464 (= lt!102704 (+!431 lt!102706 lt!102703))))

(assert (=> b!203464 (= lt!102703 (tuple2!3871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapNonEmpty!8591 () Bool)

(declare-fun tp!18508 () Bool)

(assert (=> mapNonEmpty!8591 (= mapRes!8591 (and tp!18508 e!133198))))

(declare-fun mapKey!8591 () (_ BitVec 32))

(declare-fun mapValue!8591 () ValueCell!2164)

(declare-fun mapRest!8591 () (Array (_ BitVec 32) ValueCell!2164))

(assert (=> mapNonEmpty!8591 (= (arr!4376 _values!649) (store mapRest!8591 mapKey!8591 mapValue!8591))))

(declare-fun b!203465 () Bool)

(declare-fun res!97794 () Bool)

(assert (=> b!203465 (=> (not res!97794) (not e!133202))))

(declare-datatypes ((List!2796 0))(
  ( (Nil!2793) (Cons!2792 (h!3434 (_ BitVec 64)) (t!7735 List!2796)) )
))
(declare-fun arrayNoDuplicates!0 (array!9254 (_ BitVec 32) List!2796) Bool)

(assert (=> b!203465 (= res!97794 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2793))))

(declare-fun b!203466 () Bool)

(assert (=> b!203466 (= e!133200 (and e!133204 mapRes!8591))))

(declare-fun condMapEmpty!8591 () Bool)

(declare-fun mapDefault!8591 () ValueCell!2164)

