; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39846 () Bool)

(assert start!39846)

(declare-fun b_free!10105 () Bool)

(declare-fun b_next!10105 () Bool)

(assert (=> start!39846 (= b_free!10105 (not b_next!10105))))

(declare-fun tp!35843 () Bool)

(declare-fun b_and!17887 () Bool)

(assert (=> start!39846 (= tp!35843 b_and!17887)))

(declare-fun b!430261 () Bool)

(declare-fun res!252900 () Bool)

(declare-fun e!254729 () Bool)

(assert (=> b!430261 (=> (not res!252900) (not e!254729))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!430261 (= res!252900 (validMask!0 mask!1025))))

(declare-fun b!430262 () Bool)

(declare-fun res!252899 () Bool)

(declare-fun e!254726 () Bool)

(assert (=> b!430262 (=> (not res!252899) (not e!254726))))

(declare-datatypes ((array!26327 0))(
  ( (array!26328 (arr!12610 (Array (_ BitVec 32) (_ BitVec 64))) (size!12962 (_ BitVec 32))) )
))
(declare-fun lt!196834 () array!26327)

(declare-datatypes ((List!7459 0))(
  ( (Nil!7456) (Cons!7455 (h!8311 (_ BitVec 64)) (t!13021 List!7459)) )
))
(declare-fun arrayNoDuplicates!0 (array!26327 (_ BitVec 32) List!7459) Bool)

(assert (=> b!430262 (= res!252899 (arrayNoDuplicates!0 lt!196834 #b00000000000000000000000000000000 Nil!7456))))

(declare-fun b!430263 () Bool)

(declare-fun e!254727 () Bool)

(assert (=> b!430263 (= e!254727 true)))

(declare-datatypes ((V!16115 0))(
  ( (V!16116 (val!5673 Int)) )
))
(declare-datatypes ((tuple2!7406 0))(
  ( (tuple2!7407 (_1!3713 (_ BitVec 64)) (_2!3713 V!16115)) )
))
(declare-fun lt!196839 () tuple2!7406)

(declare-datatypes ((List!7460 0))(
  ( (Nil!7457) (Cons!7456 (h!8312 tuple2!7406) (t!13022 List!7460)) )
))
(declare-datatypes ((ListLongMap!6333 0))(
  ( (ListLongMap!6334 (toList!3182 List!7460)) )
))
(declare-fun lt!196841 () ListLongMap!6333)

(declare-fun lt!196832 () tuple2!7406)

(declare-fun lt!196838 () ListLongMap!6333)

(declare-fun +!1330 (ListLongMap!6333 tuple2!7406) ListLongMap!6333)

(assert (=> b!430263 (= lt!196838 (+!1330 (+!1330 lt!196841 lt!196839) lt!196832))))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12627 0))(
  ( (Unit!12628) )
))
(declare-fun lt!196842 () Unit!12627)

(declare-fun _keys!709 () array!26327)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!196833 () V!16115)

(declare-fun v!412 () V!16115)

(declare-fun addCommutativeForDiffKeys!349 (ListLongMap!6333 (_ BitVec 64) V!16115 (_ BitVec 64) V!16115) Unit!12627)

(assert (=> b!430263 (= lt!196842 (addCommutativeForDiffKeys!349 lt!196841 k!794 v!412 (select (arr!12610 _keys!709) from!863) lt!196833))))

(declare-fun b!430264 () Bool)

(declare-fun e!254732 () Bool)

(declare-fun tp_is_empty!11257 () Bool)

(assert (=> b!430264 (= e!254732 tp_is_empty!11257)))

(declare-fun b!430265 () Bool)

(declare-fun e!254725 () Bool)

(assert (=> b!430265 (= e!254725 tp_is_empty!11257)))

(declare-fun b!430266 () Bool)

(declare-fun res!252895 () Bool)

(assert (=> b!430266 (=> (not res!252895) (not e!254729))))

(declare-fun arrayContainsKey!0 (array!26327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!430266 (= res!252895 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!430267 () Bool)

(declare-fun res!252886 () Bool)

(assert (=> b!430267 (=> (not res!252886) (not e!254729))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5285 0))(
  ( (ValueCellFull!5285 (v!7916 V!16115)) (EmptyCell!5285) )
))
(declare-datatypes ((array!26329 0))(
  ( (array!26330 (arr!12611 (Array (_ BitVec 32) ValueCell!5285)) (size!12963 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26329)

(assert (=> b!430267 (= res!252886 (and (= (size!12963 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12962 _keys!709) (size!12963 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!430268 () Bool)

(declare-fun res!252889 () Bool)

(assert (=> b!430268 (=> (not res!252889) (not e!254729))))

(assert (=> b!430268 (= res!252889 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7456))))

(declare-fun res!252887 () Bool)

(assert (=> start!39846 (=> (not res!252887) (not e!254729))))

(assert (=> start!39846 (= res!252887 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12962 _keys!709))))))

(assert (=> start!39846 e!254729))

(assert (=> start!39846 tp_is_empty!11257))

(assert (=> start!39846 tp!35843))

(assert (=> start!39846 true))

(declare-fun e!254728 () Bool)

(declare-fun array_inv!9172 (array!26329) Bool)

(assert (=> start!39846 (and (array_inv!9172 _values!549) e!254728)))

(declare-fun array_inv!9173 (array!26327) Bool)

(assert (=> start!39846 (array_inv!9173 _keys!709)))

(declare-fun b!430269 () Bool)

(declare-fun res!252890 () Bool)

(assert (=> b!430269 (=> (not res!252890) (not e!254729))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!430269 (= res!252890 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12962 _keys!709))))))

(declare-fun b!430270 () Bool)

(declare-fun e!254731 () Unit!12627)

(declare-fun Unit!12629 () Unit!12627)

(assert (=> b!430270 (= e!254731 Unit!12629)))

(declare-fun b!430271 () Bool)

(declare-fun mapRes!18507 () Bool)

(assert (=> b!430271 (= e!254728 (and e!254725 mapRes!18507))))

(declare-fun condMapEmpty!18507 () Bool)

(declare-fun mapDefault!18507 () ValueCell!5285)

