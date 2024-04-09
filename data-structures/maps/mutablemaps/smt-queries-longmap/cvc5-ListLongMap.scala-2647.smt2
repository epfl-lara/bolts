; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39708 () Bool)

(assert start!39708)

(declare-fun b_free!9967 () Bool)

(declare-fun b_next!9967 () Bool)

(assert (=> start!39708 (= b_free!9967 (not b_next!9967))))

(declare-fun tp!35430 () Bool)

(declare-fun b_and!17641 () Bool)

(assert (=> start!39708 (= tp!35430 b_and!17641)))

(declare-fun b!426428 () Bool)

(declare-fun res!250014 () Bool)

(declare-fun e!252977 () Bool)

(assert (=> b!426428 (=> (not res!250014) (not e!252977))))

(declare-datatypes ((array!26063 0))(
  ( (array!26064 (arr!12478 (Array (_ BitVec 32) (_ BitVec 64))) (size!12830 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26063)

(declare-datatypes ((List!7351 0))(
  ( (Nil!7348) (Cons!7347 (h!8203 (_ BitVec 64)) (t!12803 List!7351)) )
))
(declare-fun arrayNoDuplicates!0 (array!26063 (_ BitVec 32) List!7351) Bool)

(assert (=> b!426428 (= res!250014 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7348))))

(declare-fun b!426429 () Bool)

(declare-fun res!250005 () Bool)

(assert (=> b!426429 (=> (not res!250005) (not e!252977))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26063 (_ BitVec 32)) Bool)

(assert (=> b!426429 (= res!250005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!250009 () Bool)

(assert (=> start!39708 (=> (not res!250009) (not e!252977))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39708 (= res!250009 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12830 _keys!709))))))

(assert (=> start!39708 e!252977))

(declare-fun tp_is_empty!11119 () Bool)

(assert (=> start!39708 tp_is_empty!11119))

(assert (=> start!39708 tp!35430))

(assert (=> start!39708 true))

(declare-datatypes ((V!15931 0))(
  ( (V!15932 (val!5604 Int)) )
))
(declare-datatypes ((ValueCell!5216 0))(
  ( (ValueCellFull!5216 (v!7847 V!15931)) (EmptyCell!5216) )
))
(declare-datatypes ((array!26065 0))(
  ( (array!26066 (arr!12479 (Array (_ BitVec 32) ValueCell!5216)) (size!12831 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26065)

(declare-fun e!252974 () Bool)

(declare-fun array_inv!9090 (array!26065) Bool)

(assert (=> start!39708 (and (array_inv!9090 _values!549) e!252974)))

(declare-fun array_inv!9091 (array!26063) Bool)

(assert (=> start!39708 (array_inv!9091 _keys!709)))

(declare-fun b!426430 () Bool)

(declare-fun res!250004 () Bool)

(assert (=> b!426430 (=> (not res!250004) (not e!252977))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!426430 (= res!250004 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12830 _keys!709))))))

(declare-fun b!426431 () Bool)

(declare-fun res!250012 () Bool)

(assert (=> b!426431 (=> (not res!250012) (not e!252977))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!426431 (= res!250012 (and (= (size!12831 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12830 _keys!709) (size!12831 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!426432 () Bool)

(declare-fun res!250003 () Bool)

(assert (=> b!426432 (=> (not res!250003) (not e!252977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!426432 (= res!250003 (validMask!0 mask!1025))))

(declare-fun b!426433 () Bool)

(declare-fun e!252973 () Bool)

(declare-fun e!252979 () Bool)

(assert (=> b!426433 (= e!252973 e!252979)))

(declare-fun res!250002 () Bool)

(assert (=> b!426433 (=> (not res!250002) (not e!252979))))

(assert (=> b!426433 (= res!250002 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!15931)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7302 0))(
  ( (tuple2!7303 (_1!3661 (_ BitVec 64)) (_2!3661 V!15931)) )
))
(declare-datatypes ((List!7352 0))(
  ( (Nil!7349) (Cons!7348 (h!8204 tuple2!7302) (t!12804 List!7352)) )
))
(declare-datatypes ((ListLongMap!6229 0))(
  ( (ListLongMap!6230 (toList!3130 List!7352)) )
))
(declare-fun lt!194984 () ListLongMap!6229)

(declare-fun zeroValue!515 () V!15931)

(declare-fun lt!194983 () array!26063)

(declare-fun lt!194985 () array!26065)

(declare-fun getCurrentListMapNoExtraKeys!1331 (array!26063 array!26065 (_ BitVec 32) (_ BitVec 32) V!15931 V!15931 (_ BitVec 32) Int) ListLongMap!6229)

(assert (=> b!426433 (= lt!194984 (getCurrentListMapNoExtraKeys!1331 lt!194983 lt!194985 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15931)

(assert (=> b!426433 (= lt!194985 (array!26066 (store (arr!12479 _values!549) i!563 (ValueCellFull!5216 v!412)) (size!12831 _values!549)))))

(declare-fun lt!194982 () ListLongMap!6229)

(assert (=> b!426433 (= lt!194982 (getCurrentListMapNoExtraKeys!1331 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!426434 () Bool)

(declare-fun res!250011 () Bool)

(assert (=> b!426434 (=> (not res!250011) (not e!252977))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426434 (= res!250011 (validKeyInArray!0 k!794))))

(declare-fun b!426435 () Bool)

(assert (=> b!426435 (= e!252977 e!252973)))

(declare-fun res!250010 () Bool)

(assert (=> b!426435 (=> (not res!250010) (not e!252973))))

(assert (=> b!426435 (= res!250010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194983 mask!1025))))

(assert (=> b!426435 (= lt!194983 (array!26064 (store (arr!12478 _keys!709) i!563 k!794) (size!12830 _keys!709)))))

(declare-fun b!426436 () Bool)

(declare-fun res!250013 () Bool)

(assert (=> b!426436 (=> (not res!250013) (not e!252973))))

(assert (=> b!426436 (= res!250013 (bvsle from!863 i!563))))

(declare-fun b!426437 () Bool)

(declare-fun res!250006 () Bool)

(assert (=> b!426437 (=> (not res!250006) (not e!252973))))

(assert (=> b!426437 (= res!250006 (arrayNoDuplicates!0 lt!194983 #b00000000000000000000000000000000 Nil!7348))))

(declare-fun b!426438 () Bool)

(declare-fun res!250007 () Bool)

(assert (=> b!426438 (=> (not res!250007) (not e!252977))))

(declare-fun arrayContainsKey!0 (array!26063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!426438 (= res!250007 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!426439 () Bool)

(declare-fun e!252975 () Bool)

(declare-fun mapRes!18300 () Bool)

(assert (=> b!426439 (= e!252974 (and e!252975 mapRes!18300))))

(declare-fun condMapEmpty!18300 () Bool)

(declare-fun mapDefault!18300 () ValueCell!5216)

