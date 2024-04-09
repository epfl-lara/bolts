; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36836 () Bool)

(assert start!36836)

(declare-fun b_free!7955 () Bool)

(declare-fun b_next!7955 () Bool)

(assert (=> start!36836 (= b_free!7955 (not b_next!7955))))

(declare-fun tp!28581 () Bool)

(declare-fun b_and!15215 () Bool)

(assert (=> start!36836 (= tp!28581 b_and!15215)))

(declare-fun b!367967 () Bool)

(declare-fun res!206230 () Bool)

(declare-fun e!225098 () Bool)

(assert (=> b!367967 (=> (not res!206230) (not e!225098))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367967 (= res!206230 (validKeyInArray!0 k!778))))

(declare-fun b!367968 () Bool)

(declare-fun res!206233 () Bool)

(assert (=> b!367968 (=> (not res!206233) (not e!225098))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21131 0))(
  ( (array!21132 (arr!10031 (Array (_ BitVec 32) (_ BitVec 64))) (size!10383 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21131)

(assert (=> b!367968 (= res!206233 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10383 _keys!658))))))

(declare-fun res!206231 () Bool)

(assert (=> start!36836 (=> (not res!206231) (not e!225098))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36836 (= res!206231 (validMask!0 mask!970))))

(assert (=> start!36836 e!225098))

(assert (=> start!36836 true))

(declare-datatypes ((V!12575 0))(
  ( (V!12576 (val!4346 Int)) )
))
(declare-datatypes ((ValueCell!3958 0))(
  ( (ValueCellFull!3958 (v!6539 V!12575)) (EmptyCell!3958) )
))
(declare-datatypes ((array!21133 0))(
  ( (array!21134 (arr!10032 (Array (_ BitVec 32) ValueCell!3958)) (size!10384 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21133)

(declare-fun e!225101 () Bool)

(declare-fun array_inv!7412 (array!21133) Bool)

(assert (=> start!36836 (and (array_inv!7412 _values!506) e!225101)))

(assert (=> start!36836 tp!28581))

(declare-fun tp_is_empty!8603 () Bool)

(assert (=> start!36836 tp_is_empty!8603))

(declare-fun array_inv!7413 (array!21131) Bool)

(assert (=> start!36836 (array_inv!7413 _keys!658)))

(declare-fun b!367969 () Bool)

(declare-fun res!206226 () Bool)

(assert (=> b!367969 (=> (not res!206226) (not e!225098))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!367969 (= res!206226 (and (= (size!10384 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10383 _keys!658) (size!10384 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367970 () Bool)

(declare-fun e!225100 () Bool)

(assert (=> b!367970 (= e!225100 tp_is_empty!8603)))

(declare-fun b!367971 () Bool)

(declare-fun res!206234 () Bool)

(assert (=> b!367971 (=> (not res!206234) (not e!225098))))

(declare-fun arrayContainsKey!0 (array!21131 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367971 (= res!206234 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14469 () Bool)

(declare-fun mapRes!14469 () Bool)

(declare-fun tp!28580 () Bool)

(declare-fun e!225102 () Bool)

(assert (=> mapNonEmpty!14469 (= mapRes!14469 (and tp!28580 e!225102))))

(declare-fun mapValue!14469 () ValueCell!3958)

(declare-fun mapKey!14469 () (_ BitVec 32))

(declare-fun mapRest!14469 () (Array (_ BitVec 32) ValueCell!3958))

(assert (=> mapNonEmpty!14469 (= (arr!10032 _values!506) (store mapRest!14469 mapKey!14469 mapValue!14469))))

(declare-fun b!367972 () Bool)

(declare-fun res!206227 () Bool)

(assert (=> b!367972 (=> (not res!206227) (not e!225098))))

(declare-datatypes ((List!5610 0))(
  ( (Nil!5607) (Cons!5606 (h!6462 (_ BitVec 64)) (t!10768 List!5610)) )
))
(declare-fun arrayNoDuplicates!0 (array!21131 (_ BitVec 32) List!5610) Bool)

(assert (=> b!367972 (= res!206227 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5607))))

(declare-fun b!367973 () Bool)

(declare-fun e!225099 () Bool)

(assert (=> b!367973 (= e!225099 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5750 0))(
  ( (tuple2!5751 (_1!2885 (_ BitVec 64)) (_2!2885 V!12575)) )
))
(declare-datatypes ((List!5611 0))(
  ( (Nil!5608) (Cons!5607 (h!6463 tuple2!5750) (t!10769 List!5611)) )
))
(declare-datatypes ((ListLongMap!4677 0))(
  ( (ListLongMap!4678 (toList!2354 List!5611)) )
))
(declare-fun lt!169450 () ListLongMap!4677)

(declare-fun zeroValue!472 () V!12575)

(declare-fun minValue!472 () V!12575)

(declare-fun getCurrentListMapNoExtraKeys!622 (array!21131 array!21133 (_ BitVec 32) (_ BitVec 32) V!12575 V!12575 (_ BitVec 32) Int) ListLongMap!4677)

(assert (=> b!367973 (= lt!169450 (getCurrentListMapNoExtraKeys!622 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!367974 () Bool)

(declare-fun res!206229 () Bool)

(assert (=> b!367974 (=> (not res!206229) (not e!225098))))

(assert (=> b!367974 (= res!206229 (or (= (select (arr!10031 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10031 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367975 () Bool)

(declare-fun res!206232 () Bool)

(assert (=> b!367975 (=> (not res!206232) (not e!225098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21131 (_ BitVec 32)) Bool)

(assert (=> b!367975 (= res!206232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14469 () Bool)

(assert (=> mapIsEmpty!14469 mapRes!14469))

(declare-fun b!367976 () Bool)

(declare-fun res!206228 () Bool)

(assert (=> b!367976 (=> (not res!206228) (not e!225099))))

(declare-fun lt!169449 () array!21131)

(assert (=> b!367976 (= res!206228 (arrayNoDuplicates!0 lt!169449 #b00000000000000000000000000000000 Nil!5607))))

(declare-fun b!367977 () Bool)

(assert (=> b!367977 (= e!225102 tp_is_empty!8603)))

(declare-fun b!367978 () Bool)

(assert (=> b!367978 (= e!225098 e!225099)))

(declare-fun res!206225 () Bool)

(assert (=> b!367978 (=> (not res!206225) (not e!225099))))

(assert (=> b!367978 (= res!206225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169449 mask!970))))

(assert (=> b!367978 (= lt!169449 (array!21132 (store (arr!10031 _keys!658) i!548 k!778) (size!10383 _keys!658)))))

(declare-fun b!367979 () Bool)

(assert (=> b!367979 (= e!225101 (and e!225100 mapRes!14469))))

(declare-fun condMapEmpty!14469 () Bool)

(declare-fun mapDefault!14469 () ValueCell!3958)

