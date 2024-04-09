; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41174 () Bool)

(assert start!41174)

(declare-fun b_free!11035 () Bool)

(declare-fun b_next!11035 () Bool)

(assert (=> start!41174 (= b_free!11035 (not b_next!11035))))

(declare-fun tp!38941 () Bool)

(declare-fun b_and!19327 () Bool)

(assert (=> start!41174 (= tp!38941 b_and!19327)))

(declare-fun b!459680 () Bool)

(declare-fun e!268246 () Bool)

(declare-fun tp_is_empty!12373 () Bool)

(assert (=> b!459680 (= e!268246 tp_is_empty!12373)))

(declare-fun b!459681 () Bool)

(declare-fun res!274833 () Bool)

(declare-fun e!268243 () Bool)

(assert (=> b!459681 (=> (not res!274833) (not e!268243))))

(declare-datatypes ((array!28511 0))(
  ( (array!28512 (arr!13693 (Array (_ BitVec 32) (_ BitVec 64))) (size!14045 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28511)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!459681 (= res!274833 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!459682 () Bool)

(declare-fun e!268249 () Bool)

(declare-fun e!268251 () Bool)

(assert (=> b!459682 (= e!268249 (not e!268251))))

(declare-fun res!274843 () Bool)

(assert (=> b!459682 (=> res!274843 e!268251)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!459682 (= res!274843 (not (validKeyInArray!0 (select (arr!13693 _keys!709) from!863))))))

(declare-datatypes ((V!17603 0))(
  ( (V!17604 (val!6231 Int)) )
))
(declare-datatypes ((tuple2!8182 0))(
  ( (tuple2!8183 (_1!4101 (_ BitVec 64)) (_2!4101 V!17603)) )
))
(declare-datatypes ((List!8286 0))(
  ( (Nil!8283) (Cons!8282 (h!9138 tuple2!8182) (t!14208 List!8286)) )
))
(declare-datatypes ((ListLongMap!7109 0))(
  ( (ListLongMap!7110 (toList!3570 List!8286)) )
))
(declare-fun lt!208066 () ListLongMap!7109)

(declare-fun lt!208067 () ListLongMap!7109)

(assert (=> b!459682 (= lt!208066 lt!208067)))

(declare-fun lt!208057 () ListLongMap!7109)

(declare-fun lt!208063 () tuple2!8182)

(declare-fun +!1589 (ListLongMap!7109 tuple2!8182) ListLongMap!7109)

(assert (=> b!459682 (= lt!208067 (+!1589 lt!208057 lt!208063))))

(declare-fun minValue!515 () V!17603)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17603)

(declare-datatypes ((ValueCell!5843 0))(
  ( (ValueCellFull!5843 (v!8505 V!17603)) (EmptyCell!5843) )
))
(declare-datatypes ((array!28513 0))(
  ( (array!28514 (arr!13694 (Array (_ BitVec 32) ValueCell!5843)) (size!14046 (_ BitVec 32))) )
))
(declare-fun lt!208054 () array!28513)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!208060 () array!28511)

(declare-fun getCurrentListMapNoExtraKeys!1740 (array!28511 array!28513 (_ BitVec 32) (_ BitVec 32) V!17603 V!17603 (_ BitVec 32) Int) ListLongMap!7109)

(assert (=> b!459682 (= lt!208066 (getCurrentListMapNoExtraKeys!1740 lt!208060 lt!208054 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!17603)

(assert (=> b!459682 (= lt!208063 (tuple2!8183 k!794 v!412))))

(declare-fun _values!549 () array!28513)

(assert (=> b!459682 (= lt!208057 (getCurrentListMapNoExtraKeys!1740 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13320 0))(
  ( (Unit!13321) )
))
(declare-fun lt!208055 () Unit!13320)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!743 (array!28511 array!28513 (_ BitVec 32) (_ BitVec 32) V!17603 V!17603 (_ BitVec 32) (_ BitVec 64) V!17603 (_ BitVec 32) Int) Unit!13320)

(assert (=> b!459682 (= lt!208055 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!743 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!20209 () Bool)

(declare-fun mapRes!20209 () Bool)

(assert (=> mapIsEmpty!20209 mapRes!20209))

(declare-fun b!459683 () Bool)

(declare-fun res!274834 () Bool)

(assert (=> b!459683 (=> (not res!274834) (not e!268243))))

(assert (=> b!459683 (= res!274834 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14045 _keys!709))))))

(declare-fun b!459684 () Bool)

(declare-fun e!268245 () Bool)

(assert (=> b!459684 (= e!268245 (and e!268246 mapRes!20209))))

(declare-fun condMapEmpty!20209 () Bool)

(declare-fun mapDefault!20209 () ValueCell!5843)

