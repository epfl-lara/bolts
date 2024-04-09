; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39574 () Bool)

(assert start!39574)

(declare-fun b_free!9833 () Bool)

(declare-fun b_next!9833 () Bool)

(assert (=> start!39574 (= b_free!9833 (not b_next!9833))))

(declare-fun tp!35027 () Bool)

(declare-fun b_and!17507 () Bool)

(assert (=> start!39574 (= tp!35027 b_and!17507)))

(declare-fun b!423294 () Bool)

(declare-fun res!247471 () Bool)

(declare-fun e!251651 () Bool)

(assert (=> b!423294 (=> (not res!247471) (not e!251651))))

(declare-datatypes ((array!25797 0))(
  ( (array!25798 (arr!12345 (Array (_ BitVec 32) (_ BitVec 64))) (size!12697 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25797)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423294 (= res!247471 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!423295 () Bool)

(declare-fun res!247481 () Bool)

(assert (=> b!423295 (=> (not res!247481) (not e!251651))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423295 (= res!247481 (validMask!0 mask!1025))))

(declare-fun b!423296 () Bool)

(declare-fun res!247480 () Bool)

(assert (=> b!423296 (=> (not res!247480) (not e!251651))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15751 0))(
  ( (V!15752 (val!5537 Int)) )
))
(declare-datatypes ((ValueCell!5149 0))(
  ( (ValueCellFull!5149 (v!7780 V!15751)) (EmptyCell!5149) )
))
(declare-datatypes ((array!25799 0))(
  ( (array!25800 (arr!12346 (Array (_ BitVec 32) ValueCell!5149)) (size!12698 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25799)

(assert (=> b!423296 (= res!247480 (and (= (size!12698 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12697 _keys!709) (size!12698 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423297 () Bool)

(declare-fun e!251650 () Bool)

(assert (=> b!423297 (= e!251650 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15751)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15751)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15751)

(declare-fun lt!194140 () array!25797)

(declare-datatypes ((tuple2!7200 0))(
  ( (tuple2!7201 (_1!3610 (_ BitVec 64)) (_2!3610 V!15751)) )
))
(declare-datatypes ((List!7246 0))(
  ( (Nil!7243) (Cons!7242 (h!8098 tuple2!7200) (t!12698 List!7246)) )
))
(declare-datatypes ((ListLongMap!6127 0))(
  ( (ListLongMap!6128 (toList!3079 List!7246)) )
))
(declare-fun lt!194141 () ListLongMap!6127)

(declare-fun getCurrentListMapNoExtraKeys!1280 (array!25797 array!25799 (_ BitVec 32) (_ BitVec 32) V!15751 V!15751 (_ BitVec 32) Int) ListLongMap!6127)

(assert (=> b!423297 (= lt!194141 (getCurrentListMapNoExtraKeys!1280 lt!194140 (array!25800 (store (arr!12346 _values!549) i!563 (ValueCellFull!5149 v!412)) (size!12698 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194142 () ListLongMap!6127)

(assert (=> b!423297 (= lt!194142 (getCurrentListMapNoExtraKeys!1280 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423298 () Bool)

(declare-fun e!251648 () Bool)

(declare-fun tp_is_empty!10985 () Bool)

(assert (=> b!423298 (= e!251648 tp_is_empty!10985)))

(declare-fun b!423299 () Bool)

(declare-fun res!247472 () Bool)

(assert (=> b!423299 (=> (not res!247472) (not e!251650))))

(assert (=> b!423299 (= res!247472 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18099 () Bool)

(declare-fun mapRes!18099 () Bool)

(declare-fun tp!35028 () Bool)

(assert (=> mapNonEmpty!18099 (= mapRes!18099 (and tp!35028 e!251648))))

(declare-fun mapKey!18099 () (_ BitVec 32))

(declare-fun mapValue!18099 () ValueCell!5149)

(declare-fun mapRest!18099 () (Array (_ BitVec 32) ValueCell!5149))

(assert (=> mapNonEmpty!18099 (= (arr!12346 _values!549) (store mapRest!18099 mapKey!18099 mapValue!18099))))

(declare-fun b!423301 () Bool)

(declare-fun res!247475 () Bool)

(assert (=> b!423301 (=> (not res!247475) (not e!251651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423301 (= res!247475 (validKeyInArray!0 k!794))))

(declare-fun b!423302 () Bool)

(declare-fun res!247479 () Bool)

(assert (=> b!423302 (=> (not res!247479) (not e!251651))))

(declare-datatypes ((List!7247 0))(
  ( (Nil!7244) (Cons!7243 (h!8099 (_ BitVec 64)) (t!12699 List!7247)) )
))
(declare-fun arrayNoDuplicates!0 (array!25797 (_ BitVec 32) List!7247) Bool)

(assert (=> b!423302 (= res!247479 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7244))))

(declare-fun b!423303 () Bool)

(declare-fun res!247477 () Bool)

(assert (=> b!423303 (=> (not res!247477) (not e!251651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25797 (_ BitVec 32)) Bool)

(assert (=> b!423303 (= res!247477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!423304 () Bool)

(declare-fun res!247482 () Bool)

(assert (=> b!423304 (=> (not res!247482) (not e!251651))))

(assert (=> b!423304 (= res!247482 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12697 _keys!709))))))

(declare-fun b!423305 () Bool)

(declare-fun res!247476 () Bool)

(assert (=> b!423305 (=> (not res!247476) (not e!251650))))

(assert (=> b!423305 (= res!247476 (arrayNoDuplicates!0 lt!194140 #b00000000000000000000000000000000 Nil!7244))))

(declare-fun b!423306 () Bool)

(declare-fun res!247478 () Bool)

(assert (=> b!423306 (=> (not res!247478) (not e!251651))))

(assert (=> b!423306 (= res!247478 (or (= (select (arr!12345 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12345 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423307 () Bool)

(declare-fun e!251653 () Bool)

(assert (=> b!423307 (= e!251653 tp_is_empty!10985)))

(declare-fun res!247473 () Bool)

(assert (=> start!39574 (=> (not res!247473) (not e!251651))))

(assert (=> start!39574 (= res!247473 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12697 _keys!709))))))

(assert (=> start!39574 e!251651))

(assert (=> start!39574 tp_is_empty!10985))

(assert (=> start!39574 tp!35027))

(assert (=> start!39574 true))

(declare-fun e!251649 () Bool)

(declare-fun array_inv!8998 (array!25799) Bool)

(assert (=> start!39574 (and (array_inv!8998 _values!549) e!251649)))

(declare-fun array_inv!8999 (array!25797) Bool)

(assert (=> start!39574 (array_inv!8999 _keys!709)))

(declare-fun b!423300 () Bool)

(assert (=> b!423300 (= e!251651 e!251650)))

(declare-fun res!247474 () Bool)

(assert (=> b!423300 (=> (not res!247474) (not e!251650))))

(assert (=> b!423300 (= res!247474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194140 mask!1025))))

(assert (=> b!423300 (= lt!194140 (array!25798 (store (arr!12345 _keys!709) i!563 k!794) (size!12697 _keys!709)))))

(declare-fun b!423308 () Bool)

(assert (=> b!423308 (= e!251649 (and e!251653 mapRes!18099))))

(declare-fun condMapEmpty!18099 () Bool)

(declare-fun mapDefault!18099 () ValueCell!5149)

