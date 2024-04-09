; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20910 () Bool)

(assert start!20910)

(declare-fun b_free!5531 () Bool)

(declare-fun b_next!5531 () Bool)

(assert (=> start!20910 (= b_free!5531 (not b_next!5531))))

(declare-fun tp!19637 () Bool)

(declare-fun b_and!12307 () Bool)

(assert (=> start!20910 (= tp!19637 b_and!12307)))

(declare-fun b!209791 () Bool)

(declare-fun res!102327 () Bool)

(declare-fun e!136660 () Bool)

(assert (=> b!209791 (=> (not res!102327) (not e!136660))))

(declare-datatypes ((array!9982 0))(
  ( (array!9983 (arr!4740 (Array (_ BitVec 32) (_ BitVec 64))) (size!5065 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9982)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9982 (_ BitVec 32)) Bool)

(assert (=> b!209791 (= res!102327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!209793 () Bool)

(declare-fun res!102325 () Bool)

(assert (=> b!209793 (=> (not res!102325) (not e!136660))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!209793 (= res!102325 (= (select (arr!4740 _keys!825) i!601) k!843))))

(declare-fun b!209794 () Bool)

(declare-fun e!136656 () Bool)

(assert (=> b!209794 (= e!136660 (not e!136656))))

(declare-fun res!102324 () Bool)

(assert (=> b!209794 (=> res!102324 e!136656)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!209794 (= res!102324 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6837 0))(
  ( (V!6838 (val!2741 Int)) )
))
(declare-datatypes ((ValueCell!2353 0))(
  ( (ValueCellFull!2353 (v!4711 V!6837)) (EmptyCell!2353) )
))
(declare-datatypes ((array!9984 0))(
  ( (array!9985 (arr!4741 (Array (_ BitVec 32) ValueCell!2353)) (size!5066 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9984)

(declare-datatypes ((tuple2!4138 0))(
  ( (tuple2!4139 (_1!2079 (_ BitVec 64)) (_2!2079 V!6837)) )
))
(declare-datatypes ((List!3058 0))(
  ( (Nil!3055) (Cons!3054 (h!3696 tuple2!4138) (t!7999 List!3058)) )
))
(declare-datatypes ((ListLongMap!3065 0))(
  ( (ListLongMap!3066 (toList!1548 List!3058)) )
))
(declare-fun lt!107335 () ListLongMap!3065)

(declare-fun zeroValue!615 () V!6837)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6837)

(declare-fun getCurrentListMap!1081 (array!9982 array!9984 (_ BitVec 32) (_ BitVec 32) V!6837 V!6837 (_ BitVec 32) Int) ListLongMap!3065)

(assert (=> b!209794 (= lt!107335 (getCurrentListMap!1081 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107336 () array!9984)

(declare-fun lt!107331 () ListLongMap!3065)

(assert (=> b!209794 (= lt!107331 (getCurrentListMap!1081 _keys!825 lt!107336 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107339 () ListLongMap!3065)

(declare-fun lt!107334 () ListLongMap!3065)

(assert (=> b!209794 (and (= lt!107339 lt!107334) (= lt!107334 lt!107339))))

(declare-fun lt!107337 () ListLongMap!3065)

(declare-fun v!520 () V!6837)

(declare-fun +!541 (ListLongMap!3065 tuple2!4138) ListLongMap!3065)

(assert (=> b!209794 (= lt!107334 (+!541 lt!107337 (tuple2!4139 k!843 v!520)))))

(declare-datatypes ((Unit!6377 0))(
  ( (Unit!6378) )
))
(declare-fun lt!107333 () Unit!6377)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!198 (array!9982 array!9984 (_ BitVec 32) (_ BitVec 32) V!6837 V!6837 (_ BitVec 32) (_ BitVec 64) V!6837 (_ BitVec 32) Int) Unit!6377)

(assert (=> b!209794 (= lt!107333 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!198 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!480 (array!9982 array!9984 (_ BitVec 32) (_ BitVec 32) V!6837 V!6837 (_ BitVec 32) Int) ListLongMap!3065)

(assert (=> b!209794 (= lt!107339 (getCurrentListMapNoExtraKeys!480 _keys!825 lt!107336 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!209794 (= lt!107336 (array!9985 (store (arr!4741 _values!649) i!601 (ValueCellFull!2353 v!520)) (size!5066 _values!649)))))

(assert (=> b!209794 (= lt!107337 (getCurrentListMapNoExtraKeys!480 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!9161 () Bool)

(declare-fun mapRes!9161 () Bool)

(declare-fun tp!19636 () Bool)

(declare-fun e!136659 () Bool)

(assert (=> mapNonEmpty!9161 (= mapRes!9161 (and tp!19636 e!136659))))

(declare-fun mapRest!9161 () (Array (_ BitVec 32) ValueCell!2353))

(declare-fun mapKey!9161 () (_ BitVec 32))

(declare-fun mapValue!9161 () ValueCell!2353)

(assert (=> mapNonEmpty!9161 (= (arr!4741 _values!649) (store mapRest!9161 mapKey!9161 mapValue!9161))))

(declare-fun b!209795 () Bool)

(declare-fun e!136658 () Bool)

(declare-fun tp_is_empty!5393 () Bool)

(assert (=> b!209795 (= e!136658 tp_is_empty!5393)))

(declare-fun mapIsEmpty!9161 () Bool)

(assert (=> mapIsEmpty!9161 mapRes!9161))

(declare-fun b!209796 () Bool)

(declare-fun res!102323 () Bool)

(assert (=> b!209796 (=> (not res!102323) (not e!136660))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209796 (= res!102323 (validKeyInArray!0 k!843))))

(declare-fun lt!107332 () tuple2!4138)

(declare-fun b!209797 () Bool)

(declare-fun lt!107338 () tuple2!4138)

(assert (=> b!209797 (= e!136656 (= lt!107335 (+!541 (+!541 lt!107337 lt!107332) lt!107338)))))

(assert (=> b!209797 (= lt!107331 (+!541 (+!541 lt!107339 lt!107332) lt!107338))))

(assert (=> b!209797 (= lt!107338 (tuple2!4139 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!209797 (= lt!107332 (tuple2!4139 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!209798 () Bool)

(declare-fun e!136661 () Bool)

(assert (=> b!209798 (= e!136661 (and e!136658 mapRes!9161))))

(declare-fun condMapEmpty!9161 () Bool)

(declare-fun mapDefault!9161 () ValueCell!2353)

