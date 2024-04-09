; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41080 () Bool)

(assert start!41080)

(declare-fun b_free!10985 () Bool)

(declare-fun b_next!10985 () Bool)

(assert (=> start!41080 (= b_free!10985 (not b_next!10985))))

(declare-fun tp!38784 () Bool)

(declare-fun b_and!19195 () Bool)

(assert (=> start!41080 (= tp!38784 b_and!19195)))

(declare-fun b!457949 () Bool)

(declare-fun res!273640 () Bool)

(declare-fun e!267390 () Bool)

(assert (=> b!457949 (=> (not res!273640) (not e!267390))))

(declare-datatypes ((array!28413 0))(
  ( (array!28414 (arr!13646 (Array (_ BitVec 32) (_ BitVec 64))) (size!13998 (_ BitVec 32))) )
))
(declare-fun lt!207200 () array!28413)

(declare-datatypes ((List!8247 0))(
  ( (Nil!8244) (Cons!8243 (h!9099 (_ BitVec 64)) (t!14119 List!8247)) )
))
(declare-fun arrayNoDuplicates!0 (array!28413 (_ BitVec 32) List!8247) Bool)

(assert (=> b!457949 (= res!273640 (arrayNoDuplicates!0 lt!207200 #b00000000000000000000000000000000 Nil!8244))))

(declare-fun b!457950 () Bool)

(declare-fun res!273651 () Bool)

(declare-fun e!267389 () Bool)

(assert (=> b!457950 (=> (not res!273651) (not e!267389))))

(declare-fun _keys!709 () array!28413)

(assert (=> b!457950 (= res!273651 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8244))))

(declare-fun b!457951 () Bool)

(declare-fun res!273649 () Bool)

(assert (=> b!457951 (=> (not res!273649) (not e!267390))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!457951 (= res!273649 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!20128 () Bool)

(declare-fun mapRes!20128 () Bool)

(assert (=> mapIsEmpty!20128 mapRes!20128))

(declare-fun b!457953 () Bool)

(declare-fun res!273643 () Bool)

(assert (=> b!457953 (=> (not res!273643) (not e!267389))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17535 0))(
  ( (V!17536 (val!6206 Int)) )
))
(declare-datatypes ((ValueCell!5818 0))(
  ( (ValueCellFull!5818 (v!8472 V!17535)) (EmptyCell!5818) )
))
(declare-datatypes ((array!28415 0))(
  ( (array!28416 (arr!13647 (Array (_ BitVec 32) ValueCell!5818)) (size!13999 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28415)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!457953 (= res!273643 (and (= (size!13999 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13998 _keys!709) (size!13999 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!457954 () Bool)

(declare-fun res!273646 () Bool)

(assert (=> b!457954 (=> (not res!273646) (not e!267389))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!457954 (= res!273646 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!457955 () Bool)

(declare-fun res!273641 () Bool)

(assert (=> b!457955 (=> (not res!273641) (not e!267389))))

(assert (=> b!457955 (= res!273641 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13998 _keys!709))))))

(declare-fun b!457956 () Bool)

(declare-fun res!273650 () Bool)

(assert (=> b!457956 (=> (not res!273650) (not e!267389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28413 (_ BitVec 32)) Bool)

(assert (=> b!457956 (= res!273650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!457957 () Bool)

(declare-fun res!273648 () Bool)

(assert (=> b!457957 (=> (not res!273648) (not e!267389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!457957 (= res!273648 (validMask!0 mask!1025))))

(declare-fun b!457958 () Bool)

(declare-fun e!267388 () Bool)

(declare-fun tp_is_empty!12323 () Bool)

(assert (=> b!457958 (= e!267388 tp_is_empty!12323)))

(declare-fun b!457959 () Bool)

(assert (=> b!457959 (= e!267389 e!267390)))

(declare-fun res!273645 () Bool)

(assert (=> b!457959 (=> (not res!273645) (not e!267390))))

(assert (=> b!457959 (= res!273645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207200 mask!1025))))

(assert (=> b!457959 (= lt!207200 (array!28414 (store (arr!13646 _keys!709) i!563 k!794) (size!13998 _keys!709)))))

(declare-fun b!457960 () Bool)

(declare-fun e!267384 () Bool)

(assert (=> b!457960 (= e!267384 true)))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8144 0))(
  ( (tuple2!8145 (_1!4082 (_ BitVec 64)) (_2!4082 V!17535)) )
))
(declare-datatypes ((List!8248 0))(
  ( (Nil!8245) (Cons!8244 (h!9100 tuple2!8144) (t!14120 List!8248)) )
))
(declare-datatypes ((ListLongMap!7071 0))(
  ( (ListLongMap!7072 (toList!3551 List!8248)) )
))
(declare-fun lt!207202 () ListLongMap!7071)

(declare-fun lt!207195 () ListLongMap!7071)

(declare-fun +!1571 (ListLongMap!7071 tuple2!8144) ListLongMap!7071)

(declare-fun get!6732 (ValueCell!5818 V!17535) V!17535)

(declare-fun dynLambda!882 (Int (_ BitVec 64)) V!17535)

(assert (=> b!457960 (= lt!207202 (+!1571 lt!207195 (tuple2!8145 (select (arr!13646 _keys!709) from!863) (get!6732 (select (arr!13647 _values!549) from!863) (dynLambda!882 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457961 () Bool)

(declare-fun e!267391 () Bool)

(assert (=> b!457961 (= e!267390 e!267391)))

(declare-fun res!273644 () Bool)

(assert (=> b!457961 (=> (not res!273644) (not e!267391))))

(assert (=> b!457961 (= res!273644 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17535)

(declare-fun lt!207197 () array!28415)

(declare-fun zeroValue!515 () V!17535)

(declare-fun getCurrentListMapNoExtraKeys!1723 (array!28413 array!28415 (_ BitVec 32) (_ BitVec 32) V!17535 V!17535 (_ BitVec 32) Int) ListLongMap!7071)

(assert (=> b!457961 (= lt!207202 (getCurrentListMapNoExtraKeys!1723 lt!207200 lt!207197 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17535)

(assert (=> b!457961 (= lt!207197 (array!28416 (store (arr!13647 _values!549) i!563 (ValueCellFull!5818 v!412)) (size!13999 _values!549)))))

(declare-fun lt!207198 () ListLongMap!7071)

(assert (=> b!457961 (= lt!207198 (getCurrentListMapNoExtraKeys!1723 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!457962 () Bool)

(assert (=> b!457962 (= e!267391 (not e!267384))))

(declare-fun res!273638 () Bool)

(assert (=> b!457962 (=> res!273638 e!267384)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!457962 (= res!273638 (not (validKeyInArray!0 (select (arr!13646 _keys!709) from!863))))))

(declare-fun lt!207196 () ListLongMap!7071)

(assert (=> b!457962 (= lt!207196 lt!207195)))

(declare-fun lt!207199 () ListLongMap!7071)

(assert (=> b!457962 (= lt!207195 (+!1571 lt!207199 (tuple2!8145 k!794 v!412)))))

(assert (=> b!457962 (= lt!207196 (getCurrentListMapNoExtraKeys!1723 lt!207200 lt!207197 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!457962 (= lt!207199 (getCurrentListMapNoExtraKeys!1723 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13257 0))(
  ( (Unit!13258) )
))
(declare-fun lt!207201 () Unit!13257)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!731 (array!28413 array!28415 (_ BitVec 32) (_ BitVec 32) V!17535 V!17535 (_ BitVec 32) (_ BitVec 64) V!17535 (_ BitVec 32) Int) Unit!13257)

(assert (=> b!457962 (= lt!207201 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!731 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!457952 () Bool)

(declare-fun res!273642 () Bool)

(assert (=> b!457952 (=> (not res!273642) (not e!267389))))

(assert (=> b!457952 (= res!273642 (validKeyInArray!0 k!794))))

(declare-fun res!273647 () Bool)

(assert (=> start!41080 (=> (not res!273647) (not e!267389))))

(assert (=> start!41080 (= res!273647 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13998 _keys!709))))))

(assert (=> start!41080 e!267389))

(assert (=> start!41080 tp_is_empty!12323))

(assert (=> start!41080 tp!38784))

(assert (=> start!41080 true))

(declare-fun e!267386 () Bool)

(declare-fun array_inv!9870 (array!28415) Bool)

(assert (=> start!41080 (and (array_inv!9870 _values!549) e!267386)))

(declare-fun array_inv!9871 (array!28413) Bool)

(assert (=> start!41080 (array_inv!9871 _keys!709)))

(declare-fun b!457963 () Bool)

(declare-fun res!273639 () Bool)

(assert (=> b!457963 (=> (not res!273639) (not e!267389))))

(assert (=> b!457963 (= res!273639 (or (= (select (arr!13646 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13646 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457964 () Bool)

(declare-fun e!267387 () Bool)

(assert (=> b!457964 (= e!267386 (and e!267387 mapRes!20128))))

(declare-fun condMapEmpty!20128 () Bool)

(declare-fun mapDefault!20128 () ValueCell!5818)

