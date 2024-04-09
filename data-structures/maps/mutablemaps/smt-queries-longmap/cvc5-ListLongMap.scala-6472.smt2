; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82700 () Bool)

(assert start!82700)

(declare-fun b_free!18805 () Bool)

(declare-fun b_next!18805 () Bool)

(assert (=> start!82700 (= b_free!18805 (not b_next!18805))))

(declare-fun tp!65535 () Bool)

(declare-fun b_and!30311 () Bool)

(assert (=> start!82700 (= tp!65535 b_and!30311)))

(declare-fun b!963705 () Bool)

(declare-fun e!543369 () Bool)

(declare-fun tp_is_empty!21607 () Bool)

(assert (=> b!963705 (= e!543369 tp_is_empty!21607)))

(declare-fun b!963706 () Bool)

(declare-fun e!543370 () Bool)

(assert (=> b!963706 (= e!543370 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33793 0))(
  ( (V!33794 (val!10854 Int)) )
))
(declare-datatypes ((ValueCell!10322 0))(
  ( (ValueCellFull!10322 (v!13412 V!33793)) (EmptyCell!10322) )
))
(declare-datatypes ((array!59289 0))(
  ( (array!59290 (arr!28509 (Array (_ BitVec 32) ValueCell!10322)) (size!28989 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59289)

(declare-datatypes ((array!59291 0))(
  ( (array!59292 (arr!28510 (Array (_ BitVec 32) (_ BitVec 64))) (size!28990 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59291)

(declare-fun minValue!1342 () V!33793)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33793)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14030 0))(
  ( (tuple2!14031 (_1!7025 (_ BitVec 64)) (_2!7025 V!33793)) )
))
(declare-datatypes ((List!19910 0))(
  ( (Nil!19907) (Cons!19906 (h!21068 tuple2!14030) (t!28281 List!19910)) )
))
(declare-datatypes ((ListLongMap!12741 0))(
  ( (ListLongMap!12742 (toList!6386 List!19910)) )
))
(declare-fun contains!5440 (ListLongMap!12741 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3571 (array!59291 array!59289 (_ BitVec 32) (_ BitVec 32) V!33793 V!33793 (_ BitVec 32) Int) ListLongMap!12741)

(assert (=> b!963706 (contains!5440 (getCurrentListMap!3571 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28510 _keys!1686) i!803))))

(declare-datatypes ((Unit!32227 0))(
  ( (Unit!32228) )
))
(declare-fun lt!430956 () Unit!32227)

(declare-fun lemmaInListMapFromThenInFromMinusOne!22 (array!59291 array!59289 (_ BitVec 32) (_ BitVec 32) V!33793 V!33793 (_ BitVec 32) (_ BitVec 32) Int) Unit!32227)

(assert (=> b!963706 (= lt!430956 (lemmaInListMapFromThenInFromMinusOne!22 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963707 () Bool)

(declare-fun res!645114 () Bool)

(assert (=> b!963707 (=> (not res!645114) (not e!543370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963707 (= res!645114 (validKeyInArray!0 (select (arr!28510 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34405 () Bool)

(declare-fun mapRes!34405 () Bool)

(declare-fun tp!65536 () Bool)

(declare-fun e!543373 () Bool)

(assert (=> mapNonEmpty!34405 (= mapRes!34405 (and tp!65536 e!543373))))

(declare-fun mapKey!34405 () (_ BitVec 32))

(declare-fun mapRest!34405 () (Array (_ BitVec 32) ValueCell!10322))

(declare-fun mapValue!34405 () ValueCell!10322)

(assert (=> mapNonEmpty!34405 (= (arr!28509 _values!1400) (store mapRest!34405 mapKey!34405 mapValue!34405))))

(declare-fun b!963708 () Bool)

(declare-fun res!645113 () Bool)

(assert (=> b!963708 (=> (not res!645113) (not e!543370))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963708 (= res!645113 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963709 () Bool)

(assert (=> b!963709 (= e!543373 tp_is_empty!21607)))

(declare-fun b!963710 () Bool)

(declare-fun e!543371 () Bool)

(assert (=> b!963710 (= e!543371 (and e!543369 mapRes!34405))))

(declare-fun condMapEmpty!34405 () Bool)

(declare-fun mapDefault!34405 () ValueCell!10322)

