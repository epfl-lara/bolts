; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40574 () Bool)

(assert start!40574)

(declare-fun b_free!10577 () Bool)

(declare-fun b_next!10577 () Bool)

(assert (=> start!40574 (= b_free!10577 (not b_next!10577))))

(declare-fun tp!37550 () Bool)

(declare-fun b_and!18603 () Bool)

(assert (=> start!40574 (= tp!37550 b_and!18603)))

(declare-fun b!446957 () Bool)

(declare-fun e!262507 () Bool)

(assert (=> b!446957 (= e!262507 false)))

(declare-datatypes ((V!16991 0))(
  ( (V!16992 (val!6002 Int)) )
))
(declare-fun minValue!515 () V!16991)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5614 0))(
  ( (ValueCellFull!5614 (v!8253 V!16991)) (EmptyCell!5614) )
))
(declare-datatypes ((array!27599 0))(
  ( (array!27600 (arr!13242 (Array (_ BitVec 32) ValueCell!5614)) (size!13594 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27599)

(declare-fun zeroValue!515 () V!16991)

(declare-datatypes ((tuple2!7794 0))(
  ( (tuple2!7795 (_1!3907 (_ BitVec 64)) (_2!3907 V!16991)) )
))
(declare-datatypes ((List!7906 0))(
  ( (Nil!7903) (Cons!7902 (h!8758 tuple2!7794) (t!13676 List!7906)) )
))
(declare-datatypes ((ListLongMap!6721 0))(
  ( (ListLongMap!6722 (toList!3376 List!7906)) )
))
(declare-fun lt!203880 () ListLongMap!6721)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!27601 0))(
  ( (array!27602 (arr!13243 (Array (_ BitVec 32) (_ BitVec 64))) (size!13595 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27601)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1556 (array!27601 array!27599 (_ BitVec 32) (_ BitVec 32) V!16991 V!16991 (_ BitVec 32) Int) ListLongMap!6721)

(assert (=> b!446957 (= lt!203880 (getCurrentListMapNoExtraKeys!1556 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!446958 () Bool)

(declare-fun res!265465 () Bool)

(declare-fun e!262504 () Bool)

(assert (=> b!446958 (=> (not res!265465) (not e!262504))))

(declare-datatypes ((List!7907 0))(
  ( (Nil!7904) (Cons!7903 (h!8759 (_ BitVec 64)) (t!13677 List!7907)) )
))
(declare-fun arrayNoDuplicates!0 (array!27601 (_ BitVec 32) List!7907) Bool)

(assert (=> b!446958 (= res!265465 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7904))))

(declare-fun b!446959 () Bool)

(declare-fun res!265466 () Bool)

(assert (=> b!446959 (=> (not res!265466) (not e!262507))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446959 (= res!265466 (bvsle from!863 i!563))))

(declare-fun b!446960 () Bool)

(declare-fun res!265462 () Bool)

(assert (=> b!446960 (=> (not res!265462) (not e!262504))))

(assert (=> b!446960 (= res!265462 (or (= (select (arr!13243 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13243 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446961 () Bool)

(declare-fun res!265461 () Bool)

(assert (=> b!446961 (=> (not res!265461) (not e!262504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446961 (= res!265461 (validMask!0 mask!1025))))

(declare-fun res!265467 () Bool)

(assert (=> start!40574 (=> (not res!265467) (not e!262504))))

(assert (=> start!40574 (= res!265467 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13595 _keys!709))))))

(assert (=> start!40574 e!262504))

(declare-fun tp_is_empty!11915 () Bool)

(assert (=> start!40574 tp_is_empty!11915))

(assert (=> start!40574 tp!37550))

(assert (=> start!40574 true))

(declare-fun e!262508 () Bool)

(declare-fun array_inv!9590 (array!27599) Bool)

(assert (=> start!40574 (and (array_inv!9590 _values!549) e!262508)))

(declare-fun array_inv!9591 (array!27601) Bool)

(assert (=> start!40574 (array_inv!9591 _keys!709)))

(declare-fun b!446962 () Bool)

(assert (=> b!446962 (= e!262504 e!262507)))

(declare-fun res!265463 () Bool)

(assert (=> b!446962 (=> (not res!265463) (not e!262507))))

(declare-fun lt!203881 () array!27601)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27601 (_ BitVec 32)) Bool)

(assert (=> b!446962 (= res!265463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203881 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!446962 (= lt!203881 (array!27602 (store (arr!13243 _keys!709) i!563 k!794) (size!13595 _keys!709)))))

(declare-fun b!446963 () Bool)

(declare-fun e!262509 () Bool)

(assert (=> b!446963 (= e!262509 tp_is_empty!11915)))

(declare-fun b!446964 () Bool)

(declare-fun res!265469 () Bool)

(assert (=> b!446964 (=> (not res!265469) (not e!262504))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!446964 (= res!265469 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!19506 () Bool)

(declare-fun mapRes!19506 () Bool)

(assert (=> mapIsEmpty!19506 mapRes!19506))

(declare-fun b!446965 () Bool)

(declare-fun e!262505 () Bool)

(assert (=> b!446965 (= e!262505 tp_is_empty!11915)))

(declare-fun b!446966 () Bool)

(declare-fun res!265460 () Bool)

(assert (=> b!446966 (=> (not res!265460) (not e!262504))))

(assert (=> b!446966 (= res!265460 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13595 _keys!709))))))

(declare-fun b!446967 () Bool)

(declare-fun res!265459 () Bool)

(assert (=> b!446967 (=> (not res!265459) (not e!262504))))

(assert (=> b!446967 (= res!265459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!446968 () Bool)

(declare-fun res!265468 () Bool)

(assert (=> b!446968 (=> (not res!265468) (not e!262507))))

(assert (=> b!446968 (= res!265468 (arrayNoDuplicates!0 lt!203881 #b00000000000000000000000000000000 Nil!7904))))

(declare-fun b!446969 () Bool)

(declare-fun res!265470 () Bool)

(assert (=> b!446969 (=> (not res!265470) (not e!262504))))

(declare-fun arrayContainsKey!0 (array!27601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!446969 (= res!265470 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19506 () Bool)

(declare-fun tp!37551 () Bool)

(assert (=> mapNonEmpty!19506 (= mapRes!19506 (and tp!37551 e!262509))))

(declare-fun mapValue!19506 () ValueCell!5614)

(declare-fun mapKey!19506 () (_ BitVec 32))

(declare-fun mapRest!19506 () (Array (_ BitVec 32) ValueCell!5614))

(assert (=> mapNonEmpty!19506 (= (arr!13242 _values!549) (store mapRest!19506 mapKey!19506 mapValue!19506))))

(declare-fun b!446970 () Bool)

(assert (=> b!446970 (= e!262508 (and e!262505 mapRes!19506))))

(declare-fun condMapEmpty!19506 () Bool)

(declare-fun mapDefault!19506 () ValueCell!5614)

