; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40920 () Bool)

(assert start!40920)

(declare-fun b_free!10847 () Bool)

(declare-fun b_next!10847 () Bool)

(assert (=> start!40920 (= b_free!10847 (not b_next!10847))))

(declare-fun tp!38367 () Bool)

(declare-fun b_and!19007 () Bool)

(assert (=> start!40920 (= tp!38367 b_and!19007)))

(declare-fun b!454487 () Bool)

(declare-fun res!270915 () Bool)

(declare-fun e!265874 () Bool)

(assert (=> b!454487 (=> (not res!270915) (not e!265874))))

(declare-datatypes ((array!28139 0))(
  ( (array!28140 (arr!13510 (Array (_ BitVec 32) (_ BitVec 64))) (size!13862 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28139)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454487 (= res!270915 (or (= (select (arr!13510 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13510 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!454488 () Bool)

(declare-fun res!270924 () Bool)

(declare-fun e!265873 () Bool)

(assert (=> b!454488 (=> (not res!270924) (not e!265873))))

(declare-fun lt!206148 () array!28139)

(declare-datatypes ((List!8136 0))(
  ( (Nil!8133) (Cons!8132 (h!8988 (_ BitVec 64)) (t!13972 List!8136)) )
))
(declare-fun arrayNoDuplicates!0 (array!28139 (_ BitVec 32) List!8136) Bool)

(assert (=> b!454488 (= res!270924 (arrayNoDuplicates!0 lt!206148 #b00000000000000000000000000000000 Nil!8133))))

(declare-fun b!454489 () Bool)

(assert (=> b!454489 (= e!265873 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17351 0))(
  ( (V!17352 (val!6137 Int)) )
))
(declare-datatypes ((tuple2!8030 0))(
  ( (tuple2!8031 (_1!4025 (_ BitVec 64)) (_2!4025 V!17351)) )
))
(declare-datatypes ((List!8137 0))(
  ( (Nil!8134) (Cons!8133 (h!8989 tuple2!8030) (t!13973 List!8137)) )
))
(declare-datatypes ((ListLongMap!6957 0))(
  ( (ListLongMap!6958 (toList!3494 List!8137)) )
))
(declare-fun lt!206147 () ListLongMap!6957)

(declare-fun minValue!515 () V!17351)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5749 0))(
  ( (ValueCellFull!5749 (v!8399 V!17351)) (EmptyCell!5749) )
))
(declare-datatypes ((array!28141 0))(
  ( (array!28142 (arr!13511 (Array (_ BitVec 32) ValueCell!5749)) (size!13863 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28141)

(declare-fun zeroValue!515 () V!17351)

(declare-fun v!412 () V!17351)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1670 (array!28139 array!28141 (_ BitVec 32) (_ BitVec 32) V!17351 V!17351 (_ BitVec 32) Int) ListLongMap!6957)

(assert (=> b!454489 (= lt!206147 (getCurrentListMapNoExtraKeys!1670 lt!206148 (array!28142 (store (arr!13511 _values!549) i!563 (ValueCellFull!5749 v!412)) (size!13863 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206146 () ListLongMap!6957)

(assert (=> b!454489 (= lt!206146 (getCurrentListMapNoExtraKeys!1670 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!19918 () Bool)

(declare-fun mapRes!19918 () Bool)

(assert (=> mapIsEmpty!19918 mapRes!19918))

(declare-fun b!454490 () Bool)

(declare-fun res!270919 () Bool)

(assert (=> b!454490 (=> (not res!270919) (not e!265873))))

(assert (=> b!454490 (= res!270919 (bvsle from!863 i!563))))

(declare-fun res!270920 () Bool)

(assert (=> start!40920 (=> (not res!270920) (not e!265874))))

(assert (=> start!40920 (= res!270920 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13862 _keys!709))))))

(assert (=> start!40920 e!265874))

(declare-fun tp_is_empty!12185 () Bool)

(assert (=> start!40920 tp_is_empty!12185))

(assert (=> start!40920 tp!38367))

(assert (=> start!40920 true))

(declare-fun e!265870 () Bool)

(declare-fun array_inv!9780 (array!28141) Bool)

(assert (=> start!40920 (and (array_inv!9780 _values!549) e!265870)))

(declare-fun array_inv!9781 (array!28139) Bool)

(assert (=> start!40920 (array_inv!9781 _keys!709)))

(declare-fun b!454491 () Bool)

(declare-fun res!270918 () Bool)

(assert (=> b!454491 (=> (not res!270918) (not e!265874))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454491 (= res!270918 (validKeyInArray!0 k!794))))

(declare-fun b!454492 () Bool)

(assert (=> b!454492 (= e!265874 e!265873)))

(declare-fun res!270926 () Bool)

(assert (=> b!454492 (=> (not res!270926) (not e!265873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28139 (_ BitVec 32)) Bool)

(assert (=> b!454492 (= res!270926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206148 mask!1025))))

(assert (=> b!454492 (= lt!206148 (array!28140 (store (arr!13510 _keys!709) i!563 k!794) (size!13862 _keys!709)))))

(declare-fun b!454493 () Bool)

(declare-fun res!270923 () Bool)

(assert (=> b!454493 (=> (not res!270923) (not e!265874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454493 (= res!270923 (validMask!0 mask!1025))))

(declare-fun b!454494 () Bool)

(declare-fun res!270916 () Bool)

(assert (=> b!454494 (=> (not res!270916) (not e!265874))))

(assert (=> b!454494 (= res!270916 (and (= (size!13863 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13862 _keys!709) (size!13863 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454495 () Bool)

(declare-fun res!270921 () Bool)

(assert (=> b!454495 (=> (not res!270921) (not e!265874))))

(assert (=> b!454495 (= res!270921 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8133))))

(declare-fun b!454496 () Bool)

(declare-fun res!270925 () Bool)

(assert (=> b!454496 (=> (not res!270925) (not e!265874))))

(assert (=> b!454496 (= res!270925 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13862 _keys!709))))))

(declare-fun b!454497 () Bool)

(declare-fun e!265871 () Bool)

(assert (=> b!454497 (= e!265871 tp_is_empty!12185)))

(declare-fun b!454498 () Bool)

(declare-fun res!270922 () Bool)

(assert (=> b!454498 (=> (not res!270922) (not e!265874))))

(assert (=> b!454498 (= res!270922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454499 () Bool)

(declare-fun res!270917 () Bool)

(assert (=> b!454499 (=> (not res!270917) (not e!265874))))

(declare-fun arrayContainsKey!0 (array!28139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454499 (= res!270917 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19918 () Bool)

(declare-fun tp!38368 () Bool)

(declare-fun e!265872 () Bool)

(assert (=> mapNonEmpty!19918 (= mapRes!19918 (and tp!38368 e!265872))))

(declare-fun mapValue!19918 () ValueCell!5749)

(declare-fun mapKey!19918 () (_ BitVec 32))

(declare-fun mapRest!19918 () (Array (_ BitVec 32) ValueCell!5749))

(assert (=> mapNonEmpty!19918 (= (arr!13511 _values!549) (store mapRest!19918 mapKey!19918 mapValue!19918))))

(declare-fun b!454500 () Bool)

(assert (=> b!454500 (= e!265872 tp_is_empty!12185)))

(declare-fun b!454501 () Bool)

(assert (=> b!454501 (= e!265870 (and e!265871 mapRes!19918))))

(declare-fun condMapEmpty!19918 () Bool)

(declare-fun mapDefault!19918 () ValueCell!5749)

