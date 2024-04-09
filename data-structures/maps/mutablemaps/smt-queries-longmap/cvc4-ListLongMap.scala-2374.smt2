; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37718 () Bool)

(assert start!37718)

(declare-fun b_free!8813 () Bool)

(declare-fun b_next!8813 () Bool)

(assert (=> start!37718 (= b_free!8813 (not b_next!8813))))

(declare-fun tp!31190 () Bool)

(declare-fun b_and!16073 () Bool)

(assert (=> start!37718 (= tp!31190 b_and!16073)))

(declare-fun mapNonEmpty!15792 () Bool)

(declare-fun mapRes!15792 () Bool)

(declare-fun tp!31191 () Bool)

(declare-fun e!234377 () Bool)

(assert (=> mapNonEmpty!15792 (= mapRes!15792 (and tp!31191 e!234377))))

(declare-datatypes ((V!13751 0))(
  ( (V!13752 (val!4787 Int)) )
))
(declare-datatypes ((ValueCell!4399 0))(
  ( (ValueCellFull!4399 (v!6980 V!13751)) (EmptyCell!4399) )
))
(declare-datatypes ((array!22841 0))(
  ( (array!22842 (arr!10886 (Array (_ BitVec 32) ValueCell!4399)) (size!11238 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22841)

(declare-fun mapRest!15792 () (Array (_ BitVec 32) ValueCell!4399))

(declare-fun mapValue!15792 () ValueCell!4399)

(declare-fun mapKey!15792 () (_ BitVec 32))

(assert (=> mapNonEmpty!15792 (= (arr!10886 _values!506) (store mapRest!15792 mapKey!15792 mapValue!15792))))

(declare-fun mapIsEmpty!15792 () Bool)

(assert (=> mapIsEmpty!15792 mapRes!15792))

(declare-fun b!386363 () Bool)

(declare-fun res!220660 () Bool)

(declare-fun e!234379 () Bool)

(assert (=> b!386363 (=> (not res!220660) (not e!234379))))

(declare-datatypes ((array!22843 0))(
  ( (array!22844 (arr!10887 (Array (_ BitVec 32) (_ BitVec 64))) (size!11239 (_ BitVec 32))) )
))
(declare-fun lt!181797 () array!22843)

(declare-datatypes ((List!6260 0))(
  ( (Nil!6257) (Cons!6256 (h!7112 (_ BitVec 64)) (t!11418 List!6260)) )
))
(declare-fun arrayNoDuplicates!0 (array!22843 (_ BitVec 32) List!6260) Bool)

(assert (=> b!386363 (= res!220660 (arrayNoDuplicates!0 lt!181797 #b00000000000000000000000000000000 Nil!6257))))

(declare-fun res!220659 () Bool)

(declare-fun e!234378 () Bool)

(assert (=> start!37718 (=> (not res!220659) (not e!234378))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37718 (= res!220659 (validMask!0 mask!970))))

(assert (=> start!37718 e!234378))

(declare-fun e!234376 () Bool)

(declare-fun array_inv!7984 (array!22841) Bool)

(assert (=> start!37718 (and (array_inv!7984 _values!506) e!234376)))

(assert (=> start!37718 tp!31190))

(assert (=> start!37718 true))

(declare-fun tp_is_empty!9485 () Bool)

(assert (=> start!37718 tp_is_empty!9485))

(declare-fun _keys!658 () array!22843)

(declare-fun array_inv!7985 (array!22843) Bool)

(assert (=> start!37718 (array_inv!7985 _keys!658)))

(declare-fun b!386364 () Bool)

(declare-fun e!234381 () Bool)

(assert (=> b!386364 (= e!234376 (and e!234381 mapRes!15792))))

(declare-fun condMapEmpty!15792 () Bool)

(declare-fun mapDefault!15792 () ValueCell!4399)

