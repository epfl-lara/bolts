; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20482 () Bool)

(assert start!20482)

(declare-fun b_free!5129 () Bool)

(declare-fun b_next!5129 () Bool)

(assert (=> start!20482 (= b_free!5129 (not b_next!5129))))

(declare-fun tp!18419 () Bool)

(declare-fun b_and!11893 () Bool)

(assert (=> start!20482 (= tp!18419 b_and!11893)))

(declare-fun b!202915 () Bool)

(declare-fun e!132883 () Bool)

(assert (=> b!202915 (= e!132883 true)))

(declare-datatypes ((V!6293 0))(
  ( (V!6294 (val!2537 Int)) )
))
(declare-datatypes ((tuple2!3842 0))(
  ( (tuple2!3843 (_1!1931 (_ BitVec 64)) (_2!1931 V!6293)) )
))
(declare-datatypes ((List!2772 0))(
  ( (Nil!2769) (Cons!2768 (h!3410 tuple2!3842) (t!7711 List!2772)) )
))
(declare-datatypes ((ListLongMap!2769 0))(
  ( (ListLongMap!2770 (toList!1400 List!2772)) )
))
(declare-fun lt!102169 () ListLongMap!2769)

(declare-fun lt!102166 () ListLongMap!2769)

(declare-fun lt!102162 () tuple2!3842)

(declare-fun +!417 (ListLongMap!2769 tuple2!3842) ListLongMap!2769)

(assert (=> b!202915 (= lt!102169 (+!417 lt!102166 lt!102162))))

(declare-fun lt!102168 () ListLongMap!2769)

(declare-datatypes ((Unit!6135 0))(
  ( (Unit!6136) )
))
(declare-fun lt!102161 () Unit!6135)

(declare-fun v!520 () V!6293)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun zeroValue!615 () V!6293)

(declare-fun addCommutativeForDiffKeys!133 (ListLongMap!2769 (_ BitVec 64) V!6293 (_ BitVec 64) V!6293) Unit!6135)

(assert (=> b!202915 (= lt!102161 (addCommutativeForDiffKeys!133 lt!102168 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun res!97394 () Bool)

(declare-fun e!132884 () Bool)

(assert (=> start!20482 (=> (not res!97394) (not e!132884))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20482 (= res!97394 (validMask!0 mask!1149))))

(assert (=> start!20482 e!132884))

(declare-datatypes ((ValueCell!2149 0))(
  ( (ValueCellFull!2149 (v!4503 V!6293)) (EmptyCell!2149) )
))
(declare-datatypes ((array!9194 0))(
  ( (array!9195 (arr!4347 (Array (_ BitVec 32) ValueCell!2149)) (size!4672 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9194)

(declare-fun e!132889 () Bool)

(declare-fun array_inv!2861 (array!9194) Bool)

(assert (=> start!20482 (and (array_inv!2861 _values!649) e!132889)))

(assert (=> start!20482 true))

(declare-fun tp_is_empty!4985 () Bool)

(assert (=> start!20482 tp_is_empty!4985))

(declare-datatypes ((array!9196 0))(
  ( (array!9197 (arr!4348 (Array (_ BitVec 32) (_ BitVec 64))) (size!4673 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9196)

(declare-fun array_inv!2862 (array!9196) Bool)

(assert (=> start!20482 (array_inv!2862 _keys!825)))

(assert (=> start!20482 tp!18419))

(declare-fun b!202916 () Bool)

(declare-fun e!132887 () Bool)

(assert (=> b!202916 (= e!132884 (not e!132887))))

(declare-fun res!97390 () Bool)

(assert (=> b!202916 (=> res!97390 e!132887)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202916 (= res!97390 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!102160 () ListLongMap!2769)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6293)

(declare-fun getCurrentListMap!974 (array!9196 array!9194 (_ BitVec 32) (_ BitVec 32) V!6293 V!6293 (_ BitVec 32) Int) ListLongMap!2769)

(assert (=> b!202916 (= lt!102160 (getCurrentListMap!974 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102158 () array!9194)

(declare-fun lt!102167 () ListLongMap!2769)

(assert (=> b!202916 (= lt!102167 (getCurrentListMap!974 _keys!825 lt!102158 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102159 () ListLongMap!2769)

(declare-fun lt!102165 () ListLongMap!2769)

(assert (=> b!202916 (and (= lt!102159 lt!102165) (= lt!102165 lt!102159))))

(assert (=> b!202916 (= lt!102165 (+!417 lt!102168 lt!102162))))

(assert (=> b!202916 (= lt!102162 (tuple2!3843 k!843 v!520))))

(declare-fun lt!102164 () Unit!6135)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!87 (array!9196 array!9194 (_ BitVec 32) (_ BitVec 32) V!6293 V!6293 (_ BitVec 32) (_ BitVec 64) V!6293 (_ BitVec 32) Int) Unit!6135)

(assert (=> b!202916 (= lt!102164 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!87 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!345 (array!9196 array!9194 (_ BitVec 32) (_ BitVec 32) V!6293 V!6293 (_ BitVec 32) Int) ListLongMap!2769)

(assert (=> b!202916 (= lt!102159 (getCurrentListMapNoExtraKeys!345 _keys!825 lt!102158 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202916 (= lt!102158 (array!9195 (store (arr!4347 _values!649) i!601 (ValueCellFull!2149 v!520)) (size!4672 _values!649)))))

(assert (=> b!202916 (= lt!102168 (getCurrentListMapNoExtraKeys!345 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8546 () Bool)

(declare-fun mapRes!8546 () Bool)

(assert (=> mapIsEmpty!8546 mapRes!8546))

(declare-fun b!202917 () Bool)

(declare-fun res!97395 () Bool)

(assert (=> b!202917 (=> (not res!97395) (not e!132884))))

(assert (=> b!202917 (= res!97395 (and (= (size!4672 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4673 _keys!825) (size!4672 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!202918 () Bool)

(declare-fun res!97388 () Bool)

(assert (=> b!202918 (=> (not res!97388) (not e!132884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9196 (_ BitVec 32)) Bool)

(assert (=> b!202918 (= res!97388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!202919 () Bool)

(declare-fun res!97391 () Bool)

(assert (=> b!202919 (=> (not res!97391) (not e!132884))))

(assert (=> b!202919 (= res!97391 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4673 _keys!825))))))

(declare-fun b!202920 () Bool)

(declare-fun e!132885 () Bool)

(assert (=> b!202920 (= e!132889 (and e!132885 mapRes!8546))))

(declare-fun condMapEmpty!8546 () Bool)

(declare-fun mapDefault!8546 () ValueCell!2149)

