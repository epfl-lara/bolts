; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37090 () Bool)

(assert start!37090)

(declare-fun b_free!8209 () Bool)

(declare-fun b_next!8209 () Bool)

(assert (=> start!37090 (= b_free!8209 (not b_next!8209))))

(declare-fun tp!29342 () Bool)

(declare-fun b_and!15469 () Bool)

(assert (=> start!37090 (= tp!29342 b_and!15469)))

(declare-fun b!372949 () Bool)

(declare-fun res!210069 () Bool)

(declare-fun e!227404 () Bool)

(assert (=> b!372949 (=> (not res!210069) (not e!227404))))

(declare-datatypes ((array!21621 0))(
  ( (array!21622 (arr!10276 (Array (_ BitVec 32) (_ BitVec 64))) (size!10628 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21621)

(declare-datatypes ((List!5789 0))(
  ( (Nil!5786) (Cons!5785 (h!6641 (_ BitVec 64)) (t!10947 List!5789)) )
))
(declare-fun arrayNoDuplicates!0 (array!21621 (_ BitVec 32) List!5789) Bool)

(assert (=> b!372949 (= res!210069 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5786))))

(declare-fun mapIsEmpty!14850 () Bool)

(declare-fun mapRes!14850 () Bool)

(assert (=> mapIsEmpty!14850 mapRes!14850))

(declare-fun b!372950 () Bool)

(declare-fun res!210066 () Bool)

(assert (=> b!372950 (=> (not res!210066) (not e!227404))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372950 (= res!210066 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!372951 () Bool)

(declare-fun res!210067 () Bool)

(assert (=> b!372951 (=> (not res!210067) (not e!227404))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21621 (_ BitVec 32)) Bool)

(assert (=> b!372951 (= res!210067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372952 () Bool)

(declare-fun res!210073 () Bool)

(assert (=> b!372952 (=> (not res!210073) (not e!227404))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12915 0))(
  ( (V!12916 (val!4473 Int)) )
))
(declare-datatypes ((ValueCell!4085 0))(
  ( (ValueCellFull!4085 (v!6666 V!12915)) (EmptyCell!4085) )
))
(declare-datatypes ((array!21623 0))(
  ( (array!21624 (arr!10277 (Array (_ BitVec 32) ValueCell!4085)) (size!10629 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21623)

(assert (=> b!372952 (= res!210073 (and (= (size!10629 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10628 _keys!658) (size!10629 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372953 () Bool)

(declare-fun e!227403 () Bool)

(declare-fun tp_is_empty!8857 () Bool)

(assert (=> b!372953 (= e!227403 tp_is_empty!8857)))

(declare-fun mapNonEmpty!14850 () Bool)

(declare-fun tp!29343 () Bool)

(declare-fun e!227406 () Bool)

(assert (=> mapNonEmpty!14850 (= mapRes!14850 (and tp!29343 e!227406))))

(declare-fun mapRest!14850 () (Array (_ BitVec 32) ValueCell!4085))

(declare-fun mapValue!14850 () ValueCell!4085)

(declare-fun mapKey!14850 () (_ BitVec 32))

(assert (=> mapNonEmpty!14850 (= (arr!10277 _values!506) (store mapRest!14850 mapKey!14850 mapValue!14850))))

(declare-fun res!210064 () Bool)

(assert (=> start!37090 (=> (not res!210064) (not e!227404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37090 (= res!210064 (validMask!0 mask!970))))

(assert (=> start!37090 e!227404))

(declare-fun e!227408 () Bool)

(declare-fun array_inv!7588 (array!21623) Bool)

(assert (=> start!37090 (and (array_inv!7588 _values!506) e!227408)))

(assert (=> start!37090 tp!29342))

(assert (=> start!37090 true))

(assert (=> start!37090 tp_is_empty!8857))

(declare-fun array_inv!7589 (array!21621) Bool)

(assert (=> start!37090 (array_inv!7589 _keys!658)))

(declare-fun b!372954 () Bool)

(assert (=> b!372954 (= e!227408 (and e!227403 mapRes!14850))))

(declare-fun condMapEmpty!14850 () Bool)

(declare-fun mapDefault!14850 () ValueCell!4085)

