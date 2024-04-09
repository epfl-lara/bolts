; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40712 () Bool)

(assert start!40712)

(declare-fun b_free!10715 () Bool)

(declare-fun b_next!10715 () Bool)

(assert (=> start!40712 (= b_free!10715 (not b_next!10715))))

(declare-fun tp!37965 () Bool)

(declare-fun b_and!18741 () Bool)

(assert (=> start!40712 (= tp!37965 b_and!18741)))

(declare-fun b!450148 () Bool)

(declare-fun res!267985 () Bool)

(declare-fun e!263813 () Bool)

(assert (=> b!450148 (=> (not res!267985) (not e!263813))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450148 (= res!267985 (bvsle from!863 i!563))))

(declare-fun b!450149 () Bool)

(declare-fun e!263809 () Bool)

(assert (=> b!450149 (= e!263813 e!263809)))

(declare-fun res!267987 () Bool)

(assert (=> b!450149 (=> (not res!267987) (not e!263809))))

(assert (=> b!450149 (= res!267987 (= from!863 i!563))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17175 0))(
  ( (V!17176 (val!6071 Int)) )
))
(declare-fun zeroValue!515 () V!17175)

(declare-datatypes ((ValueCell!5683 0))(
  ( (ValueCellFull!5683 (v!8322 V!17175)) (EmptyCell!5683) )
))
(declare-datatypes ((array!27873 0))(
  ( (array!27874 (arr!13379 (Array (_ BitVec 32) ValueCell!5683)) (size!13731 (_ BitVec 32))) )
))
(declare-fun lt!204544 () array!27873)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7916 0))(
  ( (tuple2!7917 (_1!3968 (_ BitVec 64)) (_2!3968 V!17175)) )
))
(declare-datatypes ((List!8026 0))(
  ( (Nil!8023) (Cons!8022 (h!8878 tuple2!7916) (t!13796 List!8026)) )
))
(declare-datatypes ((ListLongMap!6843 0))(
  ( (ListLongMap!6844 (toList!3437 List!8026)) )
))
(declare-fun lt!204545 () ListLongMap!6843)

(declare-datatypes ((array!27875 0))(
  ( (array!27876 (arr!13380 (Array (_ BitVec 32) (_ BitVec 64))) (size!13732 (_ BitVec 32))) )
))
(declare-fun lt!204546 () array!27875)

(declare-fun minValue!515 () V!17175)

(declare-fun getCurrentListMapNoExtraKeys!1615 (array!27875 array!27873 (_ BitVec 32) (_ BitVec 32) V!17175 V!17175 (_ BitVec 32) Int) ListLongMap!6843)

(assert (=> b!450149 (= lt!204545 (getCurrentListMapNoExtraKeys!1615 lt!204546 lt!204544 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!27873)

(declare-fun v!412 () V!17175)

(assert (=> b!450149 (= lt!204544 (array!27874 (store (arr!13379 _values!549) i!563 (ValueCellFull!5683 v!412)) (size!13731 _values!549)))))

(declare-fun lt!204547 () ListLongMap!6843)

(declare-fun _keys!709 () array!27875)

(assert (=> b!450149 (= lt!204547 (getCurrentListMapNoExtraKeys!1615 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!450150 () Bool)

(declare-fun e!263810 () Bool)

(assert (=> b!450150 (= e!263810 (bvslt i!563 (size!13731 _values!549)))))

(declare-fun b!450151 () Bool)

(declare-fun res!267989 () Bool)

(assert (=> b!450151 (=> (not res!267989) (not e!263813))))

(declare-datatypes ((List!8027 0))(
  ( (Nil!8024) (Cons!8023 (h!8879 (_ BitVec 64)) (t!13797 List!8027)) )
))
(declare-fun arrayNoDuplicates!0 (array!27875 (_ BitVec 32) List!8027) Bool)

(assert (=> b!450151 (= res!267989 (arrayNoDuplicates!0 lt!204546 #b00000000000000000000000000000000 Nil!8024))))

(declare-fun b!450152 () Bool)

(declare-fun e!263812 () Bool)

(assert (=> b!450152 (= e!263812 e!263813)))

(declare-fun res!267983 () Bool)

(assert (=> b!450152 (=> (not res!267983) (not e!263813))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27875 (_ BitVec 32)) Bool)

(assert (=> b!450152 (= res!267983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204546 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!450152 (= lt!204546 (array!27876 (store (arr!13380 _keys!709) i!563 k!794) (size!13732 _keys!709)))))

(declare-fun b!450153 () Bool)

(declare-fun res!267977 () Bool)

(assert (=> b!450153 (=> (not res!267977) (not e!263812))))

(assert (=> b!450153 (= res!267977 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13732 _keys!709))))))

(declare-fun b!450154 () Bool)

(declare-fun res!267986 () Bool)

(assert (=> b!450154 (=> (not res!267986) (not e!263812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450154 (= res!267986 (validKeyInArray!0 k!794))))

(declare-fun b!450155 () Bool)

(declare-fun res!267980 () Bool)

(assert (=> b!450155 (=> (not res!267980) (not e!263812))))

(assert (=> b!450155 (= res!267980 (or (= (select (arr!13380 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13380 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!450156 () Bool)

(declare-fun res!267978 () Bool)

(assert (=> b!450156 (=> (not res!267978) (not e!263812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!450156 (= res!267978 (validMask!0 mask!1025))))

(declare-fun b!450157 () Bool)

(declare-fun res!267979 () Bool)

(assert (=> b!450157 (=> (not res!267979) (not e!263812))))

(declare-fun arrayContainsKey!0 (array!27875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450157 (= res!267979 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!450158 () Bool)

(assert (=> b!450158 (= e!263809 (not e!263810))))

(declare-fun res!267984 () Bool)

(assert (=> b!450158 (=> res!267984 e!263810)))

(assert (=> b!450158 (= res!267984 (validKeyInArray!0 (select (arr!13380 _keys!709) from!863)))))

(declare-fun e!263811 () Bool)

(assert (=> b!450158 e!263811))

(declare-fun c!55904 () Bool)

(assert (=> b!450158 (= c!55904 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13123 0))(
  ( (Unit!13124) )
))
(declare-fun lt!204543 () Unit!13123)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!680 (array!27875 array!27873 (_ BitVec 32) (_ BitVec 32) V!17175 V!17175 (_ BitVec 32) (_ BitVec 64) V!17175 (_ BitVec 32) Int) Unit!13123)

(assert (=> b!450158 (= lt!204543 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!680 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450159 () Bool)

(declare-fun e!263806 () Bool)

(declare-fun e!263808 () Bool)

(declare-fun mapRes!19713 () Bool)

(assert (=> b!450159 (= e!263806 (and e!263808 mapRes!19713))))

(declare-fun condMapEmpty!19713 () Bool)

(declare-fun mapDefault!19713 () ValueCell!5683)

