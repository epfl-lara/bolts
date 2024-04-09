; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40036 () Bool)

(assert start!40036)

(declare-fun b_free!10295 () Bool)

(declare-fun b_next!10295 () Bool)

(assert (=> start!40036 (= b_free!10295 (not b_next!10295))))

(declare-fun tp!36414 () Bool)

(declare-fun b_and!18267 () Bool)

(assert (=> start!40036 (= tp!36414 b_and!18267)))

(declare-fun b!436151 () Bool)

(declare-fun res!257162 () Bool)

(declare-fun e!257583 () Bool)

(assert (=> b!436151 (=> (not res!257162) (not e!257583))))

(declare-datatypes ((array!26697 0))(
  ( (array!26698 (arr!12795 (Array (_ BitVec 32) (_ BitVec 64))) (size!13147 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26697)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!436151 (= res!257162 (or (= (select (arr!12795 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12795 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436152 () Bool)

(declare-fun res!257169 () Bool)

(assert (=> b!436152 (=> (not res!257169) (not e!257583))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16367 0))(
  ( (V!16368 (val!5768 Int)) )
))
(declare-datatypes ((ValueCell!5380 0))(
  ( (ValueCellFull!5380 (v!8011 V!16367)) (EmptyCell!5380) )
))
(declare-datatypes ((array!26699 0))(
  ( (array!26700 (arr!12796 (Array (_ BitVec 32) ValueCell!5380)) (size!13148 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26699)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!436152 (= res!257169 (and (= (size!13148 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13147 _keys!709) (size!13148 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!436153 () Bool)

(declare-fun e!257575 () Bool)

(declare-fun tp_is_empty!11447 () Bool)

(assert (=> b!436153 (= e!257575 tp_is_empty!11447)))

(declare-fun b!436154 () Bool)

(declare-fun e!257582 () Bool)

(assert (=> b!436154 (= e!257582 true)))

(declare-datatypes ((tuple2!7574 0))(
  ( (tuple2!7575 (_1!3797 (_ BitVec 64)) (_2!3797 V!16367)) )
))
(declare-fun lt!201112 () tuple2!7574)

(declare-datatypes ((List!7617 0))(
  ( (Nil!7614) (Cons!7613 (h!8469 tuple2!7574) (t!13369 List!7617)) )
))
(declare-datatypes ((ListLongMap!6501 0))(
  ( (ListLongMap!6502 (toList!3266 List!7617)) )
))
(declare-fun lt!201103 () ListLongMap!6501)

(declare-fun lt!201110 () ListLongMap!6501)

(declare-fun lt!201106 () tuple2!7574)

(declare-fun +!1410 (ListLongMap!6501 tuple2!7574) ListLongMap!6501)

(assert (=> b!436154 (= lt!201103 (+!1410 (+!1410 lt!201110 lt!201112) lt!201106))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!201113 () V!16367)

(declare-fun v!412 () V!16367)

(declare-datatypes ((Unit!12928 0))(
  ( (Unit!12929) )
))
(declare-fun lt!201116 () Unit!12928)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!413 (ListLongMap!6501 (_ BitVec 64) V!16367 (_ BitVec 64) V!16367) Unit!12928)

(assert (=> b!436154 (= lt!201116 (addCommutativeForDiffKeys!413 lt!201110 k!794 v!412 (select (arr!12795 _keys!709) from!863) lt!201113))))

(declare-fun b!436155 () Bool)

(declare-fun e!257579 () Bool)

(assert (=> b!436155 (= e!257579 tp_is_empty!11447)))

(declare-fun b!436156 () Bool)

(declare-fun res!257172 () Bool)

(declare-fun e!257580 () Bool)

(assert (=> b!436156 (=> (not res!257172) (not e!257580))))

(declare-fun lt!201115 () array!26697)

(declare-datatypes ((List!7618 0))(
  ( (Nil!7615) (Cons!7614 (h!8470 (_ BitVec 64)) (t!13370 List!7618)) )
))
(declare-fun arrayNoDuplicates!0 (array!26697 (_ BitVec 32) List!7618) Bool)

(assert (=> b!436156 (= res!257172 (arrayNoDuplicates!0 lt!201115 #b00000000000000000000000000000000 Nil!7615))))

(declare-fun mapNonEmpty!18792 () Bool)

(declare-fun mapRes!18792 () Bool)

(declare-fun tp!36413 () Bool)

(assert (=> mapNonEmpty!18792 (= mapRes!18792 (and tp!36413 e!257575))))

(declare-fun mapRest!18792 () (Array (_ BitVec 32) ValueCell!5380))

(declare-fun mapValue!18792 () ValueCell!5380)

(declare-fun mapKey!18792 () (_ BitVec 32))

(assert (=> mapNonEmpty!18792 (= (arr!12796 _values!549) (store mapRest!18792 mapKey!18792 mapValue!18792))))

(declare-fun res!257170 () Bool)

(assert (=> start!40036 (=> (not res!257170) (not e!257583))))

(assert (=> start!40036 (= res!257170 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13147 _keys!709))))))

(assert (=> start!40036 e!257583))

(assert (=> start!40036 tp_is_empty!11447))

(assert (=> start!40036 tp!36414))

(assert (=> start!40036 true))

(declare-fun e!257581 () Bool)

(declare-fun array_inv!9292 (array!26699) Bool)

(assert (=> start!40036 (and (array_inv!9292 _values!549) e!257581)))

(declare-fun array_inv!9293 (array!26697) Bool)

(assert (=> start!40036 (array_inv!9293 _keys!709)))

(declare-fun b!436157 () Bool)

(declare-fun res!257174 () Bool)

(assert (=> b!436157 (=> (not res!257174) (not e!257583))))

(assert (=> b!436157 (= res!257174 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7615))))

(declare-fun b!436158 () Bool)

(declare-fun res!257173 () Bool)

(assert (=> b!436158 (=> (not res!257173) (not e!257580))))

(assert (=> b!436158 (= res!257173 (bvsle from!863 i!563))))

(declare-fun b!436159 () Bool)

(declare-fun res!257166 () Bool)

(assert (=> b!436159 (=> (not res!257166) (not e!257583))))

(assert (=> b!436159 (= res!257166 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13147 _keys!709))))))

(declare-fun b!436160 () Bool)

(assert (=> b!436160 (= e!257583 e!257580)))

(declare-fun res!257167 () Bool)

(assert (=> b!436160 (=> (not res!257167) (not e!257580))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26697 (_ BitVec 32)) Bool)

(assert (=> b!436160 (= res!257167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201115 mask!1025))))

(assert (=> b!436160 (= lt!201115 (array!26698 (store (arr!12795 _keys!709) i!563 k!794) (size!13147 _keys!709)))))

(declare-fun b!436161 () Bool)

(declare-fun e!257577 () Bool)

(assert (=> b!436161 (= e!257580 e!257577)))

(declare-fun res!257161 () Bool)

(assert (=> b!436161 (=> (not res!257161) (not e!257577))))

(assert (=> b!436161 (= res!257161 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16367)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16367)

(declare-fun lt!201111 () ListLongMap!6501)

(declare-fun lt!201104 () array!26699)

(declare-fun getCurrentListMapNoExtraKeys!1448 (array!26697 array!26699 (_ BitVec 32) (_ BitVec 32) V!16367 V!16367 (_ BitVec 32) Int) ListLongMap!6501)

(assert (=> b!436161 (= lt!201111 (getCurrentListMapNoExtraKeys!1448 lt!201115 lt!201104 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!436161 (= lt!201104 (array!26700 (store (arr!12796 _values!549) i!563 (ValueCellFull!5380 v!412)) (size!13148 _values!549)))))

(declare-fun lt!201114 () ListLongMap!6501)

(assert (=> b!436161 (= lt!201114 (getCurrentListMapNoExtraKeys!1448 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!18792 () Bool)

(assert (=> mapIsEmpty!18792 mapRes!18792))

(declare-fun b!436162 () Bool)

(declare-fun res!257175 () Bool)

(assert (=> b!436162 (=> (not res!257175) (not e!257583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!436162 (= res!257175 (validKeyInArray!0 k!794))))

(declare-fun b!436163 () Bool)

(declare-fun e!257576 () Unit!12928)

(declare-fun Unit!12930 () Unit!12928)

(assert (=> b!436163 (= e!257576 Unit!12930)))

(declare-fun lt!201108 () Unit!12928)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26697 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12928)

(assert (=> b!436163 (= lt!201108 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!436163 false))

(declare-fun b!436164 () Bool)

(declare-fun e!257578 () Bool)

(assert (=> b!436164 (= e!257577 (not e!257578))))

(declare-fun res!257168 () Bool)

(assert (=> b!436164 (=> res!257168 e!257578)))

(assert (=> b!436164 (= res!257168 (not (validKeyInArray!0 (select (arr!12795 _keys!709) from!863))))))

(declare-fun lt!201117 () ListLongMap!6501)

(declare-fun lt!201109 () ListLongMap!6501)

(assert (=> b!436164 (= lt!201117 lt!201109)))

(assert (=> b!436164 (= lt!201109 (+!1410 lt!201110 lt!201106))))

(assert (=> b!436164 (= lt!201117 (getCurrentListMapNoExtraKeys!1448 lt!201115 lt!201104 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!436164 (= lt!201106 (tuple2!7575 k!794 v!412))))

(assert (=> b!436164 (= lt!201110 (getCurrentListMapNoExtraKeys!1448 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!201107 () Unit!12928)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!588 (array!26697 array!26699 (_ BitVec 32) (_ BitVec 32) V!16367 V!16367 (_ BitVec 32) (_ BitVec 64) V!16367 (_ BitVec 32) Int) Unit!12928)

(assert (=> b!436164 (= lt!201107 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!588 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!436165 () Bool)

(assert (=> b!436165 (= e!257581 (and e!257579 mapRes!18792))))

(declare-fun condMapEmpty!18792 () Bool)

(declare-fun mapDefault!18792 () ValueCell!5380)

