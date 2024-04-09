; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20316 () Bool)

(assert start!20316)

(declare-fun b_free!4963 () Bool)

(declare-fun b_next!4963 () Bool)

(assert (=> start!20316 (= b_free!4963 (not b_next!4963))))

(declare-fun tp!17921 () Bool)

(declare-fun b_and!11727 () Bool)

(assert (=> start!20316 (= tp!17921 b_and!11727)))

(declare-fun b!199950 () Bool)

(declare-fun res!95174 () Bool)

(declare-fun e!131185 () Bool)

(assert (=> b!199950 (=> (not res!95174) (not e!131185))))

(declare-datatypes ((array!8874 0))(
  ( (array!8875 (arr!4187 (Array (_ BitVec 32) (_ BitVec 64))) (size!4512 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8874)

(declare-datatypes ((V!6073 0))(
  ( (V!6074 (val!2454 Int)) )
))
(declare-datatypes ((ValueCell!2066 0))(
  ( (ValueCellFull!2066 (v!4420 V!6073)) (EmptyCell!2066) )
))
(declare-datatypes ((array!8876 0))(
  ( (array!8877 (arr!4188 (Array (_ BitVec 32) ValueCell!2066)) (size!4513 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8876)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!199950 (= res!95174 (and (= (size!4513 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4512 _keys!825) (size!4513 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!199951 () Bool)

(declare-fun res!95172 () Bool)

(assert (=> b!199951 (=> (not res!95172) (not e!131185))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!199951 (= res!95172 (= (select (arr!4187 _keys!825) i!601) k!843))))

(declare-fun b!199952 () Bool)

(declare-fun e!131182 () Bool)

(declare-fun tp_is_empty!4819 () Bool)

(assert (=> b!199952 (= e!131182 tp_is_empty!4819)))

(declare-fun b!199953 () Bool)

(declare-fun res!95171 () Bool)

(assert (=> b!199953 (=> (not res!95171) (not e!131185))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199953 (= res!95171 (validKeyInArray!0 k!843))))

(declare-fun b!199954 () Bool)

(declare-fun res!95173 () Bool)

(assert (=> b!199954 (=> (not res!95173) (not e!131185))))

(declare-datatypes ((List!2645 0))(
  ( (Nil!2642) (Cons!2641 (h!3283 (_ BitVec 64)) (t!7584 List!2645)) )
))
(declare-fun arrayNoDuplicates!0 (array!8874 (_ BitVec 32) List!2645) Bool)

(assert (=> b!199954 (= res!95173 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2642))))

(declare-fun res!95170 () Bool)

(assert (=> start!20316 (=> (not res!95170) (not e!131185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20316 (= res!95170 (validMask!0 mask!1149))))

(assert (=> start!20316 e!131185))

(declare-fun e!131184 () Bool)

(declare-fun array_inv!2745 (array!8876) Bool)

(assert (=> start!20316 (and (array_inv!2745 _values!649) e!131184)))

(assert (=> start!20316 true))

(assert (=> start!20316 tp_is_empty!4819))

(declare-fun array_inv!2746 (array!8874) Bool)

(assert (=> start!20316 (array_inv!2746 _keys!825)))

(assert (=> start!20316 tp!17921))

(declare-fun b!199955 () Bool)

(declare-fun res!95176 () Bool)

(assert (=> b!199955 (=> (not res!95176) (not e!131185))))

(assert (=> b!199955 (= res!95176 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4512 _keys!825))))))

(declare-fun b!199956 () Bool)

(declare-fun e!131181 () Bool)

(assert (=> b!199956 (= e!131181 tp_is_empty!4819)))

(declare-fun mapIsEmpty!8297 () Bool)

(declare-fun mapRes!8297 () Bool)

(assert (=> mapIsEmpty!8297 mapRes!8297))

(declare-fun b!199957 () Bool)

(assert (=> b!199957 (= e!131185 (not true))))

(declare-fun lt!98675 () array!8876)

(declare-datatypes ((tuple2!3704 0))(
  ( (tuple2!3705 (_1!1862 (_ BitVec 64)) (_2!1862 V!6073)) )
))
(declare-datatypes ((List!2646 0))(
  ( (Nil!2643) (Cons!2642 (h!3284 tuple2!3704) (t!7585 List!2646)) )
))
(declare-datatypes ((ListLongMap!2631 0))(
  ( (ListLongMap!2632 (toList!1331 List!2646)) )
))
(declare-fun lt!98674 () ListLongMap!2631)

(declare-fun zeroValue!615 () V!6073)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6073)

(declare-fun getCurrentListMap!917 (array!8874 array!8876 (_ BitVec 32) (_ BitVec 32) V!6073 V!6073 (_ BitVec 32) Int) ListLongMap!2631)

(assert (=> b!199957 (= lt!98674 (getCurrentListMap!917 _keys!825 lt!98675 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98672 () ListLongMap!2631)

(declare-fun lt!98676 () ListLongMap!2631)

(assert (=> b!199957 (and (= lt!98672 lt!98676) (= lt!98676 lt!98672))))

(declare-fun v!520 () V!6073)

(declare-fun lt!98677 () ListLongMap!2631)

(declare-fun +!348 (ListLongMap!2631 tuple2!3704) ListLongMap!2631)

(assert (=> b!199957 (= lt!98676 (+!348 lt!98677 (tuple2!3705 k!843 v!520)))))

(declare-datatypes ((Unit!6005 0))(
  ( (Unit!6006) )
))
(declare-fun lt!98673 () Unit!6005)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!30 (array!8874 array!8876 (_ BitVec 32) (_ BitVec 32) V!6073 V!6073 (_ BitVec 32) (_ BitVec 64) V!6073 (_ BitVec 32) Int) Unit!6005)

(assert (=> b!199957 (= lt!98673 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!30 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!288 (array!8874 array!8876 (_ BitVec 32) (_ BitVec 32) V!6073 V!6073 (_ BitVec 32) Int) ListLongMap!2631)

(assert (=> b!199957 (= lt!98672 (getCurrentListMapNoExtraKeys!288 _keys!825 lt!98675 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199957 (= lt!98675 (array!8877 (store (arr!4188 _values!649) i!601 (ValueCellFull!2066 v!520)) (size!4513 _values!649)))))

(assert (=> b!199957 (= lt!98677 (getCurrentListMapNoExtraKeys!288 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199958 () Bool)

(declare-fun res!95175 () Bool)

(assert (=> b!199958 (=> (not res!95175) (not e!131185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8874 (_ BitVec 32)) Bool)

(assert (=> b!199958 (= res!95175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8297 () Bool)

(declare-fun tp!17920 () Bool)

(assert (=> mapNonEmpty!8297 (= mapRes!8297 (and tp!17920 e!131182))))

(declare-fun mapRest!8297 () (Array (_ BitVec 32) ValueCell!2066))

(declare-fun mapKey!8297 () (_ BitVec 32))

(declare-fun mapValue!8297 () ValueCell!2066)

(assert (=> mapNonEmpty!8297 (= (arr!4188 _values!649) (store mapRest!8297 mapKey!8297 mapValue!8297))))

(declare-fun b!199959 () Bool)

(assert (=> b!199959 (= e!131184 (and e!131181 mapRes!8297))))

(declare-fun condMapEmpty!8297 () Bool)

(declare-fun mapDefault!8297 () ValueCell!2066)

