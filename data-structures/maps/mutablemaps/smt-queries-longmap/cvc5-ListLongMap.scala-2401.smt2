; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38010 () Bool)

(assert start!38010)

(declare-fun b_free!8971 () Bool)

(declare-fun b_next!8971 () Bool)

(assert (=> start!38010 (= b_free!8971 (not b_next!8971))))

(declare-fun tp!31682 () Bool)

(declare-fun b_and!16303 () Bool)

(assert (=> start!38010 (= tp!31682 b_and!16303)))

(declare-fun b!390850 () Bool)

(declare-fun res!223758 () Bool)

(declare-fun e!236757 () Bool)

(assert (=> b!390850 (=> (not res!223758) (not e!236757))))

(declare-datatypes ((array!23163 0))(
  ( (array!23164 (arr!11041 (Array (_ BitVec 32) (_ BitVec 64))) (size!11393 (_ BitVec 32))) )
))
(declare-fun lt!184386 () array!23163)

(declare-datatypes ((List!6374 0))(
  ( (Nil!6371) (Cons!6370 (h!7226 (_ BitVec 64)) (t!11544 List!6374)) )
))
(declare-fun arrayNoDuplicates!0 (array!23163 (_ BitVec 32) List!6374) Bool)

(assert (=> b!390850 (= res!223758 (arrayNoDuplicates!0 lt!184386 #b00000000000000000000000000000000 Nil!6371))))

(declare-fun res!223760 () Bool)

(declare-fun e!236755 () Bool)

(assert (=> start!38010 (=> (not res!223760) (not e!236755))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38010 (= res!223760 (validMask!0 mask!970))))

(assert (=> start!38010 e!236755))

(declare-datatypes ((V!13963 0))(
  ( (V!13964 (val!4866 Int)) )
))
(declare-datatypes ((ValueCell!4478 0))(
  ( (ValueCellFull!4478 (v!7083 V!13963)) (EmptyCell!4478) )
))
(declare-datatypes ((array!23165 0))(
  ( (array!23166 (arr!11042 (Array (_ BitVec 32) ValueCell!4478)) (size!11394 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23165)

(declare-fun e!236754 () Bool)

(declare-fun array_inv!8096 (array!23165) Bool)

(assert (=> start!38010 (and (array_inv!8096 _values!506) e!236754)))

(assert (=> start!38010 tp!31682))

(assert (=> start!38010 true))

(declare-fun tp_is_empty!9643 () Bool)

(assert (=> start!38010 tp_is_empty!9643))

(declare-fun _keys!658 () array!23163)

(declare-fun array_inv!8097 (array!23163) Bool)

(assert (=> start!38010 (array_inv!8097 _keys!658)))

(declare-fun b!390851 () Bool)

(declare-fun res!223766 () Bool)

(assert (=> b!390851 (=> (not res!223766) (not e!236755))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!390851 (= res!223766 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16047 () Bool)

(declare-fun mapRes!16047 () Bool)

(declare-fun tp!31683 () Bool)

(declare-fun e!236753 () Bool)

(assert (=> mapNonEmpty!16047 (= mapRes!16047 (and tp!31683 e!236753))))

(declare-fun mapKey!16047 () (_ BitVec 32))

(declare-fun mapValue!16047 () ValueCell!4478)

(declare-fun mapRest!16047 () (Array (_ BitVec 32) ValueCell!4478))

(assert (=> mapNonEmpty!16047 (= (arr!11042 _values!506) (store mapRest!16047 mapKey!16047 mapValue!16047))))

(declare-fun b!390852 () Bool)

(declare-fun e!236752 () Bool)

(assert (=> b!390852 (= e!236752 (not (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!236756 () Bool)

(assert (=> b!390852 e!236756))

(declare-fun res!223768 () Bool)

(assert (=> b!390852 (=> (not res!223768) (not e!236756))))

(declare-datatypes ((tuple2!6492 0))(
  ( (tuple2!6493 (_1!3256 (_ BitVec 64)) (_2!3256 V!13963)) )
))
(declare-datatypes ((List!6375 0))(
  ( (Nil!6372) (Cons!6371 (h!7227 tuple2!6492) (t!11545 List!6375)) )
))
(declare-datatypes ((ListLongMap!5419 0))(
  ( (ListLongMap!5420 (toList!2725 List!6375)) )
))
(declare-fun lt!184390 () ListLongMap!5419)

(declare-fun lt!184393 () tuple2!6492)

(declare-fun lt!184391 () ListLongMap!5419)

(declare-fun +!1023 (ListLongMap!5419 tuple2!6492) ListLongMap!5419)

(assert (=> b!390852 (= res!223768 (= lt!184391 (+!1023 lt!184390 lt!184393)))))

(declare-fun zeroValue!472 () V!13963)

(assert (=> b!390852 (= lt!184393 (tuple2!6493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!390853 () Bool)

(declare-fun e!236751 () Bool)

(assert (=> b!390853 (= e!236754 (and e!236751 mapRes!16047))))

(declare-fun condMapEmpty!16047 () Bool)

(declare-fun mapDefault!16047 () ValueCell!4478)

