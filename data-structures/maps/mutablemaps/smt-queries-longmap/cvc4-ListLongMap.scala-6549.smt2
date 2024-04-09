; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83210 () Bool)

(assert start!83210)

(declare-fun b_free!19175 () Bool)

(declare-fun b_next!19175 () Bool)

(assert (=> start!83210 (= b_free!19175 (not b_next!19175))))

(declare-fun tp!66804 () Bool)

(declare-fun b_and!30681 () Bool)

(assert (=> start!83210 (= tp!66804 b_and!30681)))

(declare-fun mapIsEmpty!35119 () Bool)

(declare-fun mapRes!35119 () Bool)

(assert (=> mapIsEmpty!35119 mapRes!35119))

(declare-fun b!970316 () Bool)

(declare-fun e!547059 () Bool)

(assert (=> b!970316 (= e!547059 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34413 0))(
  ( (V!34414 (val!11087 Int)) )
))
(declare-datatypes ((ValueCell!10555 0))(
  ( (ValueCellFull!10555 (v!13646 V!34413)) (EmptyCell!10555) )
))
(declare-datatypes ((array!60187 0))(
  ( (array!60188 (arr!28953 (Array (_ BitVec 32) ValueCell!10555)) (size!29433 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60187)

(declare-fun lt!431686 () Bool)

(declare-fun zeroValue!1367 () V!34413)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34413)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60189 0))(
  ( (array!60190 (arr!28954 (Array (_ BitVec 32) (_ BitVec 64))) (size!29434 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60189)

(declare-datatypes ((tuple2!14306 0))(
  ( (tuple2!14307 (_1!7163 (_ BitVec 64)) (_2!7163 V!34413)) )
))
(declare-datatypes ((List!20197 0))(
  ( (Nil!20194) (Cons!20193 (h!21355 tuple2!14306) (t!28568 List!20197)) )
))
(declare-datatypes ((ListLongMap!13017 0))(
  ( (ListLongMap!13018 (toList!6524 List!20197)) )
))
(declare-fun contains!5579 (ListLongMap!13017 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3709 (array!60189 array!60187 (_ BitVec 32) (_ BitVec 32) V!34413 V!34413 (_ BitVec 32) Int) ListLongMap!13017)

(assert (=> b!970316 (= lt!431686 (contains!5579 (getCurrentListMap!3709 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28954 _keys!1717) i!822)))))

(declare-fun b!970317 () Bool)

(declare-fun res!649562 () Bool)

(assert (=> b!970317 (=> (not res!649562) (not e!547059))))

(assert (=> b!970317 (= res!649562 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29434 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29434 _keys!1717))))))

(declare-fun b!970318 () Bool)

(declare-fun res!649559 () Bool)

(assert (=> b!970318 (=> (not res!649559) (not e!547059))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970318 (= res!649559 (validKeyInArray!0 (select (arr!28954 _keys!1717) i!822)))))

(declare-fun b!970319 () Bool)

(declare-fun e!547060 () Bool)

(declare-fun tp_is_empty!22073 () Bool)

(assert (=> b!970319 (= e!547060 tp_is_empty!22073)))

(declare-fun mapNonEmpty!35119 () Bool)

(declare-fun tp!66805 () Bool)

(declare-fun e!547062 () Bool)

(assert (=> mapNonEmpty!35119 (= mapRes!35119 (and tp!66805 e!547062))))

(declare-fun mapRest!35119 () (Array (_ BitVec 32) ValueCell!10555))

(declare-fun mapKey!35119 () (_ BitVec 32))

(declare-fun mapValue!35119 () ValueCell!10555)

(assert (=> mapNonEmpty!35119 (= (arr!28953 _values!1425) (store mapRest!35119 mapKey!35119 mapValue!35119))))

(declare-fun b!970320 () Bool)

(declare-fun res!649564 () Bool)

(assert (=> b!970320 (=> (not res!649564) (not e!547059))))

(declare-datatypes ((List!20198 0))(
  ( (Nil!20195) (Cons!20194 (h!21356 (_ BitVec 64)) (t!28569 List!20198)) )
))
(declare-fun arrayNoDuplicates!0 (array!60189 (_ BitVec 32) List!20198) Bool)

(assert (=> b!970320 (= res!649564 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20195))))

(declare-fun res!649561 () Bool)

(assert (=> start!83210 (=> (not res!649561) (not e!547059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83210 (= res!649561 (validMask!0 mask!2147))))

(assert (=> start!83210 e!547059))

(assert (=> start!83210 true))

(declare-fun e!547061 () Bool)

(declare-fun array_inv!22299 (array!60187) Bool)

(assert (=> start!83210 (and (array_inv!22299 _values!1425) e!547061)))

(assert (=> start!83210 tp_is_empty!22073))

(assert (=> start!83210 tp!66804))

(declare-fun array_inv!22300 (array!60189) Bool)

(assert (=> start!83210 (array_inv!22300 _keys!1717)))

(declare-fun b!970321 () Bool)

(declare-fun res!649563 () Bool)

(assert (=> b!970321 (=> (not res!649563) (not e!547059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60189 (_ BitVec 32)) Bool)

(assert (=> b!970321 (= res!649563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970322 () Bool)

(assert (=> b!970322 (= e!547061 (and e!547060 mapRes!35119))))

(declare-fun condMapEmpty!35119 () Bool)

(declare-fun mapDefault!35119 () ValueCell!10555)

