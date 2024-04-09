; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39220 () Bool)

(assert start!39220)

(declare-fun b_free!9479 () Bool)

(declare-fun b_next!9479 () Bool)

(assert (=> start!39220 (= b_free!9479 (not b_next!9479))))

(declare-fun tp!33966 () Bool)

(declare-fun b_and!16883 () Bool)

(assert (=> start!39220 (= tp!33966 b_and!16883)))

(declare-fun b!413292 () Bool)

(declare-fun res!240237 () Bool)

(declare-fun e!247147 () Bool)

(assert (=> b!413292 (=> (not res!240237) (not e!247147))))

(declare-datatypes ((array!25101 0))(
  ( (array!25102 (arr!11997 (Array (_ BitVec 32) (_ BitVec 64))) (size!12349 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25101)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25101 (_ BitVec 32)) Bool)

(assert (=> b!413292 (= res!240237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!413294 () Bool)

(declare-fun res!240246 () Bool)

(declare-fun e!247148 () Bool)

(assert (=> b!413294 (=> (not res!240246) (not e!247148))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413294 (= res!240246 (bvsle from!863 i!563))))

(declare-fun b!413295 () Bool)

(declare-fun res!240245 () Bool)

(assert (=> b!413295 (=> (not res!240245) (not e!247147))))

(assert (=> b!413295 (= res!240245 (or (= (select (arr!11997 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11997 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!413296 () Bool)

(assert (=> b!413296 (= e!247147 e!247148)))

(declare-fun res!240234 () Bool)

(assert (=> b!413296 (=> (not res!240234) (not e!247148))))

(declare-fun lt!189702 () array!25101)

(assert (=> b!413296 (= res!240234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189702 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!413296 (= lt!189702 (array!25102 (store (arr!11997 _keys!709) i!563 k!794) (size!12349 _keys!709)))))

(declare-fun bm!28609 () Bool)

(declare-datatypes ((V!15279 0))(
  ( (V!15280 (val!5360 Int)) )
))
(declare-datatypes ((ValueCell!4972 0))(
  ( (ValueCellFull!4972 (v!7603 V!15279)) (EmptyCell!4972) )
))
(declare-datatypes ((array!25103 0))(
  ( (array!25104 (arr!11998 (Array (_ BitVec 32) ValueCell!4972)) (size!12350 (_ BitVec 32))) )
))
(declare-fun lt!189704 () array!25103)

(declare-fun minValue!515 () V!15279)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun _values!549 () array!25103)

(declare-fun zeroValue!515 () V!15279)

(declare-datatypes ((tuple2!6888 0))(
  ( (tuple2!6889 (_1!3454 (_ BitVec 64)) (_2!3454 V!15279)) )
))
(declare-datatypes ((List!6949 0))(
  ( (Nil!6946) (Cons!6945 (h!7801 tuple2!6888) (t!12131 List!6949)) )
))
(declare-datatypes ((ListLongMap!5815 0))(
  ( (ListLongMap!5816 (toList!2923 List!6949)) )
))
(declare-fun call!28612 () ListLongMap!5815)

(declare-fun c!54857 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1132 (array!25101 array!25103 (_ BitVec 32) (_ BitVec 32) V!15279 V!15279 (_ BitVec 32) Int) ListLongMap!5815)

(assert (=> bm!28609 (= call!28612 (getCurrentListMapNoExtraKeys!1132 (ite c!54857 _keys!709 lt!189702) (ite c!54857 _values!549 lt!189704) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17568 () Bool)

(declare-fun mapRes!17568 () Bool)

(declare-fun tp!33965 () Bool)

(declare-fun e!247152 () Bool)

(assert (=> mapNonEmpty!17568 (= mapRes!17568 (and tp!33965 e!247152))))

(declare-fun mapKey!17568 () (_ BitVec 32))

(declare-fun mapValue!17568 () ValueCell!4972)

(declare-fun mapRest!17568 () (Array (_ BitVec 32) ValueCell!4972))

(assert (=> mapNonEmpty!17568 (= (arr!11998 _values!549) (store mapRest!17568 mapKey!17568 mapValue!17568))))

(declare-fun b!413297 () Bool)

(declare-fun tp_is_empty!10631 () Bool)

(assert (=> b!413297 (= e!247152 tp_is_empty!10631)))

(declare-fun b!413298 () Bool)

(declare-fun e!247146 () Bool)

(declare-fun call!28613 () ListLongMap!5815)

(assert (=> b!413298 (= e!247146 (= call!28612 call!28613))))

(declare-fun b!413293 () Bool)

(declare-fun res!240242 () Bool)

(assert (=> b!413293 (=> (not res!240242) (not e!247148))))

(declare-datatypes ((List!6950 0))(
  ( (Nil!6947) (Cons!6946 (h!7802 (_ BitVec 64)) (t!12132 List!6950)) )
))
(declare-fun arrayNoDuplicates!0 (array!25101 (_ BitVec 32) List!6950) Bool)

(assert (=> b!413293 (= res!240242 (arrayNoDuplicates!0 lt!189702 #b00000000000000000000000000000000 Nil!6947))))

(declare-fun res!240236 () Bool)

(assert (=> start!39220 (=> (not res!240236) (not e!247147))))

(assert (=> start!39220 (= res!240236 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12349 _keys!709))))))

(assert (=> start!39220 e!247147))

(assert (=> start!39220 tp_is_empty!10631))

(assert (=> start!39220 tp!33966))

(assert (=> start!39220 true))

(declare-fun e!247149 () Bool)

(declare-fun array_inv!8750 (array!25103) Bool)

(assert (=> start!39220 (and (array_inv!8750 _values!549) e!247149)))

(declare-fun array_inv!8751 (array!25101) Bool)

(assert (=> start!39220 (array_inv!8751 _keys!709)))

(declare-fun b!413299 () Bool)

(declare-fun e!247151 () Bool)

(assert (=> b!413299 (= e!247149 (and e!247151 mapRes!17568))))

(declare-fun condMapEmpty!17568 () Bool)

(declare-fun mapDefault!17568 () ValueCell!4972)

