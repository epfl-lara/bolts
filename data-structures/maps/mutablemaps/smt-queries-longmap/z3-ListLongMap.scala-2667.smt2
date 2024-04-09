; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39830 () Bool)

(assert start!39830)

(declare-fun b_free!10089 () Bool)

(declare-fun b_next!10089 () Bool)

(assert (=> start!39830 (= b_free!10089 (not b_next!10089))))

(declare-fun tp!35796 () Bool)

(declare-fun b_and!17855 () Bool)

(assert (=> start!39830 (= tp!35796 b_and!17855)))

(declare-fun b!429769 () Bool)

(declare-fun e!254495 () Bool)

(declare-fun e!254494 () Bool)

(assert (=> b!429769 (= e!254495 e!254494)))

(declare-fun res!252537 () Bool)

(assert (=> b!429769 (=> (not res!252537) (not e!254494))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429769 (= res!252537 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!26299 0))(
  ( (array!26300 (arr!12596 (Array (_ BitVec 32) (_ BitVec 64))) (size!12948 (_ BitVec 32))) )
))
(declare-fun lt!196497 () array!26299)

(declare-datatypes ((V!16093 0))(
  ( (V!16094 (val!5665 Int)) )
))
(declare-fun zeroValue!515 () V!16093)

(declare-datatypes ((ValueCell!5277 0))(
  ( (ValueCellFull!5277 (v!7908 V!16093)) (EmptyCell!5277) )
))
(declare-datatypes ((array!26301 0))(
  ( (array!26302 (arr!12597 (Array (_ BitVec 32) ValueCell!5277)) (size!12949 (_ BitVec 32))) )
))
(declare-fun lt!196490 () array!26301)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!16093)

(declare-datatypes ((tuple2!7396 0))(
  ( (tuple2!7397 (_1!3708 (_ BitVec 64)) (_2!3708 V!16093)) )
))
(declare-datatypes ((List!7448 0))(
  ( (Nil!7445) (Cons!7444 (h!8300 tuple2!7396) (t!12994 List!7448)) )
))
(declare-datatypes ((ListLongMap!6323 0))(
  ( (ListLongMap!6324 (toList!3177 List!7448)) )
))
(declare-fun lt!196492 () ListLongMap!6323)

(declare-fun getCurrentListMapNoExtraKeys!1374 (array!26299 array!26301 (_ BitVec 32) (_ BitVec 32) V!16093 V!16093 (_ BitVec 32) Int) ListLongMap!6323)

(assert (=> b!429769 (= lt!196492 (getCurrentListMapNoExtraKeys!1374 lt!196497 lt!196490 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26301)

(declare-fun v!412 () V!16093)

(assert (=> b!429769 (= lt!196490 (array!26302 (store (arr!12597 _values!549) i!563 (ValueCellFull!5277 v!412)) (size!12949 _values!549)))))

(declare-fun lt!196488 () ListLongMap!6323)

(declare-fun _keys!709 () array!26299)

(assert (=> b!429769 (= lt!196488 (getCurrentListMapNoExtraKeys!1374 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!429770 () Bool)

(declare-datatypes ((Unit!12604 0))(
  ( (Unit!12605) )
))
(declare-fun e!254491 () Unit!12604)

(declare-fun Unit!12606 () Unit!12604)

(assert (=> b!429770 (= e!254491 Unit!12606)))

(declare-fun b!429771 () Bool)

(declare-fun res!252540 () Bool)

(declare-fun e!254493 () Bool)

(assert (=> b!429771 (=> (not res!252540) (not e!254493))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!429771 (= res!252540 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!429772 () Bool)

(declare-fun res!252541 () Bool)

(assert (=> b!429772 (=> (not res!252541) (not e!254493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26299 (_ BitVec 32)) Bool)

(assert (=> b!429772 (= res!252541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!429773 () Bool)

(declare-fun e!254490 () Bool)

(declare-fun tp_is_empty!11241 () Bool)

(assert (=> b!429773 (= e!254490 tp_is_empty!11241)))

(declare-fun mapNonEmpty!18483 () Bool)

(declare-fun mapRes!18483 () Bool)

(declare-fun tp!35795 () Bool)

(declare-fun e!254496 () Bool)

(assert (=> mapNonEmpty!18483 (= mapRes!18483 (and tp!35795 e!254496))))

(declare-fun mapValue!18483 () ValueCell!5277)

(declare-fun mapRest!18483 () (Array (_ BitVec 32) ValueCell!5277))

(declare-fun mapKey!18483 () (_ BitVec 32))

(assert (=> mapNonEmpty!18483 (= (arr!12597 _values!549) (store mapRest!18483 mapKey!18483 mapValue!18483))))

(declare-fun b!429774 () Bool)

(declare-fun e!254489 () Bool)

(assert (=> b!429774 (= e!254494 (not e!254489))))

(declare-fun res!252533 () Bool)

(assert (=> b!429774 (=> res!252533 e!254489)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!429774 (= res!252533 (not (validKeyInArray!0 (select (arr!12596 _keys!709) from!863))))))

(declare-fun lt!196491 () ListLongMap!6323)

(declare-fun lt!196489 () ListLongMap!6323)

(assert (=> b!429774 (= lt!196491 lt!196489)))

(declare-fun lt!196494 () ListLongMap!6323)

(declare-fun +!1326 (ListLongMap!6323 tuple2!7396) ListLongMap!6323)

(assert (=> b!429774 (= lt!196489 (+!1326 lt!196494 (tuple2!7397 k0!794 v!412)))))

(assert (=> b!429774 (= lt!196491 (getCurrentListMapNoExtraKeys!1374 lt!196497 lt!196490 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!429774 (= lt!196494 (getCurrentListMapNoExtraKeys!1374 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!196495 () Unit!12604)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!523 (array!26299 array!26301 (_ BitVec 32) (_ BitVec 32) V!16093 V!16093 (_ BitVec 32) (_ BitVec 64) V!16093 (_ BitVec 32) Int) Unit!12604)

(assert (=> b!429774 (= lt!196495 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!523 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!429775 () Bool)

(declare-fun res!252539 () Bool)

(assert (=> b!429775 (=> (not res!252539) (not e!254493))))

(assert (=> b!429775 (= res!252539 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12948 _keys!709))))))

(declare-fun b!429776 () Bool)

(declare-fun e!254497 () Bool)

(assert (=> b!429776 (= e!254497 (and e!254490 mapRes!18483))))

(declare-fun condMapEmpty!18483 () Bool)

(declare-fun mapDefault!18483 () ValueCell!5277)

(assert (=> b!429776 (= condMapEmpty!18483 (= (arr!12597 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5277)) mapDefault!18483)))))

(declare-fun b!429777 () Bool)

(assert (=> b!429777 (= e!254489 true)))

(assert (=> b!429777 (not (= (select (arr!12596 _keys!709) from!863) k0!794))))

(declare-fun lt!196493 () Unit!12604)

(assert (=> b!429777 (= lt!196493 e!254491)))

(declare-fun c!55394 () Bool)

(assert (=> b!429777 (= c!55394 (= (select (arr!12596 _keys!709) from!863) k0!794))))

(declare-fun get!6255 (ValueCell!5277 V!16093) V!16093)

(declare-fun dynLambda!772 (Int (_ BitVec 64)) V!16093)

(assert (=> b!429777 (= lt!196492 (+!1326 lt!196489 (tuple2!7397 (select (arr!12596 _keys!709) from!863) (get!6255 (select (arr!12597 _values!549) from!863) (dynLambda!772 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!429778 () Bool)

(assert (=> b!429778 (= e!254496 tp_is_empty!11241)))

(declare-fun b!429779 () Bool)

(declare-fun res!252542 () Bool)

(assert (=> b!429779 (=> (not res!252542) (not e!254493))))

(assert (=> b!429779 (= res!252542 (validKeyInArray!0 k0!794))))

(declare-fun b!429780 () Bool)

(declare-fun res!252535 () Bool)

(assert (=> b!429780 (=> (not res!252535) (not e!254493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429780 (= res!252535 (validMask!0 mask!1025))))

(declare-fun b!429781 () Bool)

(declare-fun Unit!12607 () Unit!12604)

(assert (=> b!429781 (= e!254491 Unit!12607)))

(declare-fun lt!196496 () Unit!12604)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26299 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12604)

(assert (=> b!429781 (= lt!196496 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429781 false))

(declare-fun b!429782 () Bool)

(declare-fun res!252531 () Bool)

(assert (=> b!429782 (=> (not res!252531) (not e!254493))))

(declare-datatypes ((List!7449 0))(
  ( (Nil!7446) (Cons!7445 (h!8301 (_ BitVec 64)) (t!12995 List!7449)) )
))
(declare-fun arrayNoDuplicates!0 (array!26299 (_ BitVec 32) List!7449) Bool)

(assert (=> b!429782 (= res!252531 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7446))))

(declare-fun b!429783 () Bool)

(declare-fun res!252532 () Bool)

(assert (=> b!429783 (=> (not res!252532) (not e!254495))))

(assert (=> b!429783 (= res!252532 (bvsle from!863 i!563))))

(declare-fun res!252543 () Bool)

(assert (=> start!39830 (=> (not res!252543) (not e!254493))))

(assert (=> start!39830 (= res!252543 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12948 _keys!709))))))

(assert (=> start!39830 e!254493))

(assert (=> start!39830 tp_is_empty!11241))

(assert (=> start!39830 tp!35796))

(assert (=> start!39830 true))

(declare-fun array_inv!9162 (array!26301) Bool)

(assert (=> start!39830 (and (array_inv!9162 _values!549) e!254497)))

(declare-fun array_inv!9163 (array!26299) Bool)

(assert (=> start!39830 (array_inv!9163 _keys!709)))

(declare-fun mapIsEmpty!18483 () Bool)

(assert (=> mapIsEmpty!18483 mapRes!18483))

(declare-fun b!429784 () Bool)

(declare-fun res!252534 () Bool)

(assert (=> b!429784 (=> (not res!252534) (not e!254495))))

(assert (=> b!429784 (= res!252534 (arrayNoDuplicates!0 lt!196497 #b00000000000000000000000000000000 Nil!7446))))

(declare-fun b!429785 () Bool)

(declare-fun res!252530 () Bool)

(assert (=> b!429785 (=> (not res!252530) (not e!254493))))

(assert (=> b!429785 (= res!252530 (and (= (size!12949 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12948 _keys!709) (size!12949 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!429786 () Bool)

(assert (=> b!429786 (= e!254493 e!254495)))

(declare-fun res!252538 () Bool)

(assert (=> b!429786 (=> (not res!252538) (not e!254495))))

(assert (=> b!429786 (= res!252538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196497 mask!1025))))

(assert (=> b!429786 (= lt!196497 (array!26300 (store (arr!12596 _keys!709) i!563 k0!794) (size!12948 _keys!709)))))

(declare-fun b!429787 () Bool)

(declare-fun res!252536 () Bool)

(assert (=> b!429787 (=> (not res!252536) (not e!254493))))

(assert (=> b!429787 (= res!252536 (or (= (select (arr!12596 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12596 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!39830 res!252543) b!429780))

(assert (= (and b!429780 res!252535) b!429785))

(assert (= (and b!429785 res!252530) b!429772))

(assert (= (and b!429772 res!252541) b!429782))

(assert (= (and b!429782 res!252531) b!429775))

(assert (= (and b!429775 res!252539) b!429779))

(assert (= (and b!429779 res!252542) b!429787))

(assert (= (and b!429787 res!252536) b!429771))

(assert (= (and b!429771 res!252540) b!429786))

(assert (= (and b!429786 res!252538) b!429784))

(assert (= (and b!429784 res!252534) b!429783))

(assert (= (and b!429783 res!252532) b!429769))

(assert (= (and b!429769 res!252537) b!429774))

(assert (= (and b!429774 (not res!252533)) b!429777))

(assert (= (and b!429777 c!55394) b!429781))

(assert (= (and b!429777 (not c!55394)) b!429770))

(assert (= (and b!429776 condMapEmpty!18483) mapIsEmpty!18483))

(assert (= (and b!429776 (not condMapEmpty!18483)) mapNonEmpty!18483))

(get-info :version)

(assert (= (and mapNonEmpty!18483 ((_ is ValueCellFull!5277) mapValue!18483)) b!429778))

(assert (= (and b!429776 ((_ is ValueCellFull!5277) mapDefault!18483)) b!429773))

(assert (= start!39830 b!429776))

(declare-fun b_lambda!9207 () Bool)

(assert (=> (not b_lambda!9207) (not b!429777)))

(declare-fun t!12993 () Bool)

(declare-fun tb!3503 () Bool)

(assert (=> (and start!39830 (= defaultEntry!557 defaultEntry!557) t!12993) tb!3503))

(declare-fun result!6525 () Bool)

(assert (=> tb!3503 (= result!6525 tp_is_empty!11241)))

(assert (=> b!429777 t!12993))

(declare-fun b_and!17857 () Bool)

(assert (= b_and!17855 (and (=> t!12993 result!6525) b_and!17857)))

(declare-fun m!418055 () Bool)

(assert (=> b!429782 m!418055))

(declare-fun m!418057 () Bool)

(assert (=> b!429784 m!418057))

(declare-fun m!418059 () Bool)

(assert (=> b!429779 m!418059))

(declare-fun m!418061 () Bool)

(assert (=> b!429787 m!418061))

(declare-fun m!418063 () Bool)

(assert (=> b!429781 m!418063))

(declare-fun m!418065 () Bool)

(assert (=> b!429769 m!418065))

(declare-fun m!418067 () Bool)

(assert (=> b!429769 m!418067))

(declare-fun m!418069 () Bool)

(assert (=> b!429769 m!418069))

(declare-fun m!418071 () Bool)

(assert (=> start!39830 m!418071))

(declare-fun m!418073 () Bool)

(assert (=> start!39830 m!418073))

(declare-fun m!418075 () Bool)

(assert (=> mapNonEmpty!18483 m!418075))

(declare-fun m!418077 () Bool)

(assert (=> b!429772 m!418077))

(declare-fun m!418079 () Bool)

(assert (=> b!429786 m!418079))

(declare-fun m!418081 () Bool)

(assert (=> b!429786 m!418081))

(declare-fun m!418083 () Bool)

(assert (=> b!429771 m!418083))

(declare-fun m!418085 () Bool)

(assert (=> b!429774 m!418085))

(declare-fun m!418087 () Bool)

(assert (=> b!429774 m!418087))

(assert (=> b!429774 m!418085))

(declare-fun m!418089 () Bool)

(assert (=> b!429774 m!418089))

(declare-fun m!418091 () Bool)

(assert (=> b!429774 m!418091))

(declare-fun m!418093 () Bool)

(assert (=> b!429774 m!418093))

(declare-fun m!418095 () Bool)

(assert (=> b!429774 m!418095))

(declare-fun m!418097 () Bool)

(assert (=> b!429780 m!418097))

(assert (=> b!429777 m!418085))

(declare-fun m!418099 () Bool)

(assert (=> b!429777 m!418099))

(declare-fun m!418101 () Bool)

(assert (=> b!429777 m!418101))

(declare-fun m!418103 () Bool)

(assert (=> b!429777 m!418103))

(assert (=> b!429777 m!418101))

(assert (=> b!429777 m!418099))

(declare-fun m!418105 () Bool)

(assert (=> b!429777 m!418105))

(check-sat b_and!17857 (not start!39830) (not mapNonEmpty!18483) (not b!429774) (not b!429771) (not b_next!10089) (not b!429784) (not b!429777) (not b!429772) (not b!429782) (not b_lambda!9207) (not b!429769) tp_is_empty!11241 (not b!429781) (not b!429780) (not b!429786) (not b!429779))
(check-sat b_and!17857 (not b_next!10089))
