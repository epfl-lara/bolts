; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37136 () Bool)

(assert start!37136)

(declare-fun b_free!8255 () Bool)

(declare-fun b_next!8255 () Bool)

(assert (=> start!37136 (= b_free!8255 (not b_next!8255))))

(declare-fun tp!29480 () Bool)

(declare-fun b_and!15515 () Bool)

(assert (=> start!37136 (= tp!29480 b_and!15515)))

(declare-fun mapNonEmpty!14919 () Bool)

(declare-fun mapRes!14919 () Bool)

(declare-fun tp!29481 () Bool)

(declare-fun e!227952 () Bool)

(assert (=> mapNonEmpty!14919 (= mapRes!14919 (and tp!29481 e!227952))))

(declare-fun mapKey!14919 () (_ BitVec 32))

(declare-datatypes ((V!12975 0))(
  ( (V!12976 (val!4496 Int)) )
))
(declare-datatypes ((ValueCell!4108 0))(
  ( (ValueCellFull!4108 (v!6689 V!12975)) (EmptyCell!4108) )
))
(declare-fun mapRest!14919 () (Array (_ BitVec 32) ValueCell!4108))

(declare-datatypes ((array!21711 0))(
  ( (array!21712 (arr!10321 (Array (_ BitVec 32) ValueCell!4108)) (size!10673 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21711)

(declare-fun mapValue!14919 () ValueCell!4108)

(assert (=> mapNonEmpty!14919 (= (arr!10321 _values!506) (store mapRest!14919 mapKey!14919 mapValue!14919))))

(declare-fun b!373977 () Bool)

(declare-fun res!210890 () Bool)

(declare-fun e!227953 () Bool)

(assert (=> b!373977 (=> (not res!210890) (not e!227953))))

(declare-datatypes ((array!21713 0))(
  ( (array!21714 (arr!10322 (Array (_ BitVec 32) (_ BitVec 64))) (size!10674 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21713)

(declare-datatypes ((List!5824 0))(
  ( (Nil!5821) (Cons!5820 (h!6676 (_ BitVec 64)) (t!10982 List!5824)) )
))
(declare-fun arrayNoDuplicates!0 (array!21713 (_ BitVec 32) List!5824) Bool)

(assert (=> b!373977 (= res!210890 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5821))))

(declare-fun b!373978 () Bool)

(declare-fun res!210893 () Bool)

(declare-fun e!227949 () Bool)

(assert (=> b!373978 (=> (not res!210893) (not e!227949))))

(declare-fun lt!172279 () array!21713)

(assert (=> b!373978 (= res!210893 (arrayNoDuplicates!0 lt!172279 #b00000000000000000000000000000000 Nil!5821))))

(declare-fun b!373979 () Bool)

(declare-fun e!227950 () Bool)

(declare-fun e!227951 () Bool)

(assert (=> b!373979 (= e!227950 e!227951)))

(declare-fun res!210891 () Bool)

(assert (=> b!373979 (=> res!210891 e!227951)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!373979 (= res!210891 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!5954 0))(
  ( (tuple2!5955 (_1!2987 (_ BitVec 64)) (_2!2987 V!12975)) )
))
(declare-datatypes ((List!5825 0))(
  ( (Nil!5822) (Cons!5821 (h!6677 tuple2!5954) (t!10983 List!5825)) )
))
(declare-datatypes ((ListLongMap!4881 0))(
  ( (ListLongMap!4882 (toList!2456 List!5825)) )
))
(declare-fun lt!172277 () ListLongMap!4881)

(declare-fun lt!172276 () ListLongMap!4881)

(assert (=> b!373979 (= lt!172277 lt!172276)))

(declare-fun lt!172285 () ListLongMap!4881)

(declare-fun lt!172282 () tuple2!5954)

(declare-fun +!797 (ListLongMap!4881 tuple2!5954) ListLongMap!4881)

(assert (=> b!373979 (= lt!172276 (+!797 lt!172285 lt!172282))))

(declare-datatypes ((Unit!11497 0))(
  ( (Unit!11498) )
))
(declare-fun lt!172275 () Unit!11497)

(declare-fun v!373 () V!12975)

(declare-fun zeroValue!472 () V!12975)

(declare-fun lt!172270 () ListLongMap!4881)

(declare-fun addCommutativeForDiffKeys!226 (ListLongMap!4881 (_ BitVec 64) V!12975 (_ BitVec 64) V!12975) Unit!11497)

(assert (=> b!373979 (= lt!172275 (addCommutativeForDiffKeys!226 lt!172270 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!172271 () ListLongMap!4881)

(declare-fun lt!172281 () tuple2!5954)

(assert (=> b!373979 (= lt!172271 (+!797 lt!172277 lt!172281))))

(declare-fun lt!172269 () ListLongMap!4881)

(declare-fun lt!172280 () tuple2!5954)

(assert (=> b!373979 (= lt!172277 (+!797 lt!172269 lt!172280))))

(declare-fun lt!172272 () ListLongMap!4881)

(declare-fun lt!172283 () ListLongMap!4881)

(assert (=> b!373979 (= lt!172272 lt!172283)))

(assert (=> b!373979 (= lt!172283 (+!797 lt!172285 lt!172281))))

(assert (=> b!373979 (= lt!172285 (+!797 lt!172270 lt!172280))))

(declare-fun lt!172284 () ListLongMap!4881)

(assert (=> b!373979 (= lt!172271 (+!797 (+!797 lt!172284 lt!172280) lt!172281))))

(declare-fun minValue!472 () V!12975)

(assert (=> b!373979 (= lt!172281 (tuple2!5955 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373979 (= lt!172280 (tuple2!5955 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373980 () Bool)

(declare-fun tp_is_empty!8903 () Bool)

(assert (=> b!373980 (= e!227952 tp_is_empty!8903)))

(declare-fun b!373981 () Bool)

(declare-fun e!227954 () Bool)

(assert (=> b!373981 (= e!227954 tp_is_empty!8903)))

(declare-fun res!210887 () Bool)

(assert (=> start!37136 (=> (not res!210887) (not e!227953))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37136 (= res!210887 (validMask!0 mask!970))))

(assert (=> start!37136 e!227953))

(declare-fun e!227955 () Bool)

(declare-fun array_inv!7616 (array!21711) Bool)

(assert (=> start!37136 (and (array_inv!7616 _values!506) e!227955)))

(assert (=> start!37136 tp!29480))

(assert (=> start!37136 true))

(assert (=> start!37136 tp_is_empty!8903))

(declare-fun array_inv!7617 (array!21713) Bool)

(assert (=> start!37136 (array_inv!7617 _keys!658)))

(declare-fun b!373982 () Bool)

(declare-fun res!210892 () Bool)

(assert (=> b!373982 (=> (not res!210892) (not e!227953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373982 (= res!210892 (validKeyInArray!0 k!778))))

(declare-fun b!373983 () Bool)

(declare-fun res!210886 () Bool)

(assert (=> b!373983 (=> (not res!210886) (not e!227953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21713 (_ BitVec 32)) Bool)

(assert (=> b!373983 (= res!210886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373984 () Bool)

(declare-fun res!210889 () Bool)

(assert (=> b!373984 (=> (not res!210889) (not e!227953))))

(declare-fun arrayContainsKey!0 (array!21713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373984 (= res!210889 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14919 () Bool)

(assert (=> mapIsEmpty!14919 mapRes!14919))

(declare-fun b!373985 () Bool)

(assert (=> b!373985 (= e!227955 (and e!227954 mapRes!14919))))

(declare-fun condMapEmpty!14919 () Bool)

(declare-fun mapDefault!14919 () ValueCell!4108)

