; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40144 () Bool)

(assert start!40144)

(declare-fun b_free!10403 () Bool)

(declare-fun b_next!10403 () Bool)

(assert (=> start!40144 (= b_free!10403 (not b_next!10403))))

(declare-fun tp!36737 () Bool)

(declare-fun b_and!18389 () Bool)

(assert (=> start!40144 (= tp!36737 b_and!18389)))

(declare-fun b!438833 () Bool)

(declare-fun e!258770 () Bool)

(declare-fun e!258767 () Bool)

(assert (=> b!438833 (= e!258770 e!258767)))

(declare-fun res!259305 () Bool)

(assert (=> b!438833 (=> (not res!259305) (not e!258767))))

(declare-datatypes ((array!26903 0))(
  ( (array!26904 (arr!12898 (Array (_ BitVec 32) (_ BitVec 64))) (size!13250 (_ BitVec 32))) )
))
(declare-fun lt!202107 () array!26903)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26903 (_ BitVec 32)) Bool)

(assert (=> b!438833 (= res!259305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202107 mask!1025))))

(declare-fun _keys!709 () array!26903)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!438833 (= lt!202107 (array!26904 (store (arr!12898 _keys!709) i!563 k!794) (size!13250 _keys!709)))))

(declare-fun b!438834 () Bool)

(declare-fun e!258768 () Bool)

(declare-fun tp_is_empty!11555 () Bool)

(assert (=> b!438834 (= e!258768 tp_is_empty!11555)))

(declare-fun mapNonEmpty!18954 () Bool)

(declare-fun mapRes!18954 () Bool)

(declare-fun tp!36738 () Bool)

(declare-fun e!258766 () Bool)

(assert (=> mapNonEmpty!18954 (= mapRes!18954 (and tp!36738 e!258766))))

(declare-datatypes ((V!16511 0))(
  ( (V!16512 (val!5822 Int)) )
))
(declare-datatypes ((ValueCell!5434 0))(
  ( (ValueCellFull!5434 (v!8065 V!16511)) (EmptyCell!5434) )
))
(declare-datatypes ((array!26905 0))(
  ( (array!26906 (arr!12899 (Array (_ BitVec 32) ValueCell!5434)) (size!13251 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26905)

(declare-fun mapValue!18954 () ValueCell!5434)

(declare-fun mapKey!18954 () (_ BitVec 32))

(declare-fun mapRest!18954 () (Array (_ BitVec 32) ValueCell!5434))

(assert (=> mapNonEmpty!18954 (= (arr!12899 _values!549) (store mapRest!18954 mapKey!18954 mapValue!18954))))

(declare-fun b!438835 () Bool)

(declare-fun res!259316 () Bool)

(assert (=> b!438835 (=> (not res!259316) (not e!258770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438835 (= res!259316 (validMask!0 mask!1025))))

(declare-fun b!438836 () Bool)

(declare-fun res!259317 () Bool)

(assert (=> b!438836 (=> (not res!259317) (not e!258770))))

(declare-fun arrayContainsKey!0 (array!26903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438836 (= res!259317 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!438837 () Bool)

(declare-fun res!259308 () Bool)

(assert (=> b!438837 (=> (not res!259308) (not e!258767))))

(declare-datatypes ((List!7697 0))(
  ( (Nil!7694) (Cons!7693 (h!8549 (_ BitVec 64)) (t!13461 List!7697)) )
))
(declare-fun arrayNoDuplicates!0 (array!26903 (_ BitVec 32) List!7697) Bool)

(assert (=> b!438837 (= res!259308 (arrayNoDuplicates!0 lt!202107 #b00000000000000000000000000000000 Nil!7694))))

(declare-fun b!438838 () Bool)

(declare-fun res!259310 () Bool)

(assert (=> b!438838 (=> (not res!259310) (not e!258770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!438838 (= res!259310 (validKeyInArray!0 k!794))))

(declare-fun b!438839 () Bool)

(declare-fun res!259309 () Bool)

(assert (=> b!438839 (=> (not res!259309) (not e!258770))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!438839 (= res!259309 (and (= (size!13251 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13250 _keys!709) (size!13251 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!259315 () Bool)

(assert (=> start!40144 (=> (not res!259315) (not e!258770))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40144 (= res!259315 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13250 _keys!709))))))

(assert (=> start!40144 e!258770))

(assert (=> start!40144 tp_is_empty!11555))

(assert (=> start!40144 tp!36737))

(assert (=> start!40144 true))

(declare-fun e!258772 () Bool)

(declare-fun array_inv!9360 (array!26905) Bool)

(assert (=> start!40144 (and (array_inv!9360 _values!549) e!258772)))

(declare-fun array_inv!9361 (array!26903) Bool)

(assert (=> start!40144 (array_inv!9361 _keys!709)))

(declare-fun b!438840 () Bool)

(declare-fun res!259306 () Bool)

(assert (=> b!438840 (=> (not res!259306) (not e!258770))))

(assert (=> b!438840 (= res!259306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438841 () Bool)

(declare-fun res!259311 () Bool)

(assert (=> b!438841 (=> (not res!259311) (not e!258770))))

(assert (=> b!438841 (= res!259311 (or (= (select (arr!12898 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12898 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438842 () Bool)

(assert (=> b!438842 (= e!258772 (and e!258768 mapRes!18954))))

(declare-fun condMapEmpty!18954 () Bool)

(declare-fun mapDefault!18954 () ValueCell!5434)

