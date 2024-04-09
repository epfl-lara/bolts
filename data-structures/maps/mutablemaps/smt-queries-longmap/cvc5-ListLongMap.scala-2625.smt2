; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39576 () Bool)

(assert start!39576)

(declare-fun b_free!9835 () Bool)

(declare-fun b_next!9835 () Bool)

(assert (=> start!39576 (= b_free!9835 (not b_next!9835))))

(declare-fun tp!35034 () Bool)

(declare-fun b_and!17509 () Bool)

(assert (=> start!39576 (= tp!35034 b_and!17509)))

(declare-fun res!247513 () Bool)

(declare-fun e!251670 () Bool)

(assert (=> start!39576 (=> (not res!247513) (not e!251670))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25801 0))(
  ( (array!25802 (arr!12347 (Array (_ BitVec 32) (_ BitVec 64))) (size!12699 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25801)

(assert (=> start!39576 (= res!247513 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12699 _keys!709))))))

(assert (=> start!39576 e!251670))

(declare-fun tp_is_empty!10987 () Bool)

(assert (=> start!39576 tp_is_empty!10987))

(assert (=> start!39576 tp!35034))

(assert (=> start!39576 true))

(declare-datatypes ((V!15755 0))(
  ( (V!15756 (val!5538 Int)) )
))
(declare-datatypes ((ValueCell!5150 0))(
  ( (ValueCellFull!5150 (v!7781 V!15755)) (EmptyCell!5150) )
))
(declare-datatypes ((array!25803 0))(
  ( (array!25804 (arr!12348 (Array (_ BitVec 32) ValueCell!5150)) (size!12700 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25803)

(declare-fun e!251666 () Bool)

(declare-fun array_inv!9000 (array!25803) Bool)

(assert (=> start!39576 (and (array_inv!9000 _values!549) e!251666)))

(declare-fun array_inv!9001 (array!25801) Bool)

(assert (=> start!39576 (array_inv!9001 _keys!709)))

(declare-fun b!423339 () Bool)

(declare-fun res!247512 () Bool)

(assert (=> b!423339 (=> (not res!247512) (not e!251670))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25801 (_ BitVec 32)) Bool)

(assert (=> b!423339 (= res!247512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!18102 () Bool)

(declare-fun mapRes!18102 () Bool)

(assert (=> mapIsEmpty!18102 mapRes!18102))

(declare-fun b!423340 () Bool)

(declare-fun res!247509 () Bool)

(declare-fun e!251669 () Bool)

(assert (=> b!423340 (=> (not res!247509) (not e!251669))))

(declare-fun lt!194151 () array!25801)

(declare-datatypes ((List!7248 0))(
  ( (Nil!7245) (Cons!7244 (h!8100 (_ BitVec 64)) (t!12700 List!7248)) )
))
(declare-fun arrayNoDuplicates!0 (array!25801 (_ BitVec 32) List!7248) Bool)

(assert (=> b!423340 (= res!247509 (arrayNoDuplicates!0 lt!194151 #b00000000000000000000000000000000 Nil!7245))))

(declare-fun b!423341 () Bool)

(declare-fun res!247507 () Bool)

(assert (=> b!423341 (=> (not res!247507) (not e!251669))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!423341 (= res!247507 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18102 () Bool)

(declare-fun tp!35033 () Bool)

(declare-fun e!251667 () Bool)

(assert (=> mapNonEmpty!18102 (= mapRes!18102 (and tp!35033 e!251667))))

(declare-fun mapValue!18102 () ValueCell!5150)

(declare-fun mapRest!18102 () (Array (_ BitVec 32) ValueCell!5150))

(declare-fun mapKey!18102 () (_ BitVec 32))

(assert (=> mapNonEmpty!18102 (= (arr!12348 _values!549) (store mapRest!18102 mapKey!18102 mapValue!18102))))

(declare-fun b!423342 () Bool)

(declare-fun res!247508 () Bool)

(assert (=> b!423342 (=> (not res!247508) (not e!251670))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423342 (= res!247508 (validKeyInArray!0 k!794))))

(declare-fun b!423343 () Bool)

(declare-fun res!247515 () Bool)

(assert (=> b!423343 (=> (not res!247515) (not e!251670))))

(assert (=> b!423343 (= res!247515 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7245))))

(declare-fun b!423344 () Bool)

(declare-fun res!247511 () Bool)

(assert (=> b!423344 (=> (not res!247511) (not e!251670))))

(declare-fun arrayContainsKey!0 (array!25801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423344 (= res!247511 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!423345 () Bool)

(assert (=> b!423345 (= e!251669 false)))

(declare-fun minValue!515 () V!15755)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15755)

(declare-datatypes ((tuple2!7202 0))(
  ( (tuple2!7203 (_1!3611 (_ BitVec 64)) (_2!3611 V!15755)) )
))
(declare-datatypes ((List!7249 0))(
  ( (Nil!7246) (Cons!7245 (h!8101 tuple2!7202) (t!12701 List!7249)) )
))
(declare-datatypes ((ListLongMap!6129 0))(
  ( (ListLongMap!6130 (toList!3080 List!7249)) )
))
(declare-fun lt!194149 () ListLongMap!6129)

(declare-fun v!412 () V!15755)

(declare-fun getCurrentListMapNoExtraKeys!1281 (array!25801 array!25803 (_ BitVec 32) (_ BitVec 32) V!15755 V!15755 (_ BitVec 32) Int) ListLongMap!6129)

(assert (=> b!423345 (= lt!194149 (getCurrentListMapNoExtraKeys!1281 lt!194151 (array!25804 (store (arr!12348 _values!549) i!563 (ValueCellFull!5150 v!412)) (size!12700 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194150 () ListLongMap!6129)

(assert (=> b!423345 (= lt!194150 (getCurrentListMapNoExtraKeys!1281 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423346 () Bool)

(declare-fun res!247517 () Bool)

(assert (=> b!423346 (=> (not res!247517) (not e!251670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423346 (= res!247517 (validMask!0 mask!1025))))

(declare-fun b!423347 () Bool)

(declare-fun res!247516 () Bool)

(assert (=> b!423347 (=> (not res!247516) (not e!251670))))

(assert (=> b!423347 (= res!247516 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12699 _keys!709))))))

(declare-fun b!423348 () Bool)

(declare-fun res!247518 () Bool)

(assert (=> b!423348 (=> (not res!247518) (not e!251670))))

(assert (=> b!423348 (= res!247518 (and (= (size!12700 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12699 _keys!709) (size!12700 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423349 () Bool)

(declare-fun e!251671 () Bool)

(assert (=> b!423349 (= e!251671 tp_is_empty!10987)))

(declare-fun b!423350 () Bool)

(assert (=> b!423350 (= e!251670 e!251669)))

(declare-fun res!247510 () Bool)

(assert (=> b!423350 (=> (not res!247510) (not e!251669))))

(assert (=> b!423350 (= res!247510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194151 mask!1025))))

(assert (=> b!423350 (= lt!194151 (array!25802 (store (arr!12347 _keys!709) i!563 k!794) (size!12699 _keys!709)))))

(declare-fun b!423351 () Bool)

(declare-fun res!247514 () Bool)

(assert (=> b!423351 (=> (not res!247514) (not e!251670))))

(assert (=> b!423351 (= res!247514 (or (= (select (arr!12347 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12347 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423352 () Bool)

(assert (=> b!423352 (= e!251667 tp_is_empty!10987)))

(declare-fun b!423353 () Bool)

(assert (=> b!423353 (= e!251666 (and e!251671 mapRes!18102))))

(declare-fun condMapEmpty!18102 () Bool)

(declare-fun mapDefault!18102 () ValueCell!5150)

