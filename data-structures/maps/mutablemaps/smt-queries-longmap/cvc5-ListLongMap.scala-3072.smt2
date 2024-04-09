; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43292 () Bool)

(assert start!43292)

(declare-fun b_free!12151 () Bool)

(declare-fun b_next!12151 () Bool)

(assert (=> start!43292 (= b_free!12151 (not b_next!12151))))

(declare-fun tp!42723 () Bool)

(declare-fun b_and!20921 () Bool)

(assert (=> start!43292 (= tp!42723 b_and!20921)))

(declare-fun b!479358 () Bool)

(declare-fun e!282042 () Bool)

(declare-fun tp_is_empty!13663 () Bool)

(assert (=> b!479358 (= e!282042 tp_is_empty!13663)))

(declare-fun mapIsEmpty!22192 () Bool)

(declare-fun mapRes!22192 () Bool)

(assert (=> mapIsEmpty!22192 mapRes!22192))

(declare-fun b!479359 () Bool)

(declare-fun e!282039 () Bool)

(assert (=> b!479359 (= e!282039 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19289 0))(
  ( (V!19290 (val!6879 Int)) )
))
(declare-fun minValue!1458 () V!19289)

(declare-fun lt!217841 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19289)

(declare-datatypes ((ValueCell!6470 0))(
  ( (ValueCellFull!6470 (v!9164 V!19289)) (EmptyCell!6470) )
))
(declare-datatypes ((array!30963 0))(
  ( (array!30964 (arr!14885 (Array (_ BitVec 32) ValueCell!6470)) (size!15243 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30963)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!30965 0))(
  ( (array!30966 (arr!14886 (Array (_ BitVec 32) (_ BitVec 64))) (size!15244 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30965)

(declare-datatypes ((tuple2!9022 0))(
  ( (tuple2!9023 (_1!4521 (_ BitVec 64)) (_2!4521 V!19289)) )
))
(declare-datatypes ((List!9134 0))(
  ( (Nil!9131) (Cons!9130 (h!9986 tuple2!9022) (t!15348 List!9134)) )
))
(declare-datatypes ((ListLongMap!7949 0))(
  ( (ListLongMap!7950 (toList!3990 List!9134)) )
))
(declare-fun contains!2597 (ListLongMap!7949 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2282 (array!30965 array!30963 (_ BitVec 32) (_ BitVec 32) V!19289 V!19289 (_ BitVec 32) Int) ListLongMap!7949)

(assert (=> b!479359 (= lt!217841 (contains!2597 (getCurrentListMap!2282 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!479360 () Bool)

(declare-fun res!286010 () Bool)

(assert (=> b!479360 (=> (not res!286010) (not e!282039))))

(assert (=> b!479360 (= res!286010 (and (= (size!15243 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15244 _keys!1874) (size!15243 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!22192 () Bool)

(declare-fun tp!42724 () Bool)

(assert (=> mapNonEmpty!22192 (= mapRes!22192 (and tp!42724 e!282042))))

(declare-fun mapRest!22192 () (Array (_ BitVec 32) ValueCell!6470))

(declare-fun mapKey!22192 () (_ BitVec 32))

(declare-fun mapValue!22192 () ValueCell!6470)

(assert (=> mapNonEmpty!22192 (= (arr!14885 _values!1516) (store mapRest!22192 mapKey!22192 mapValue!22192))))

(declare-fun b!479361 () Bool)

(declare-fun res!286008 () Bool)

(assert (=> b!479361 (=> (not res!286008) (not e!282039))))

(declare-datatypes ((List!9135 0))(
  ( (Nil!9132) (Cons!9131 (h!9987 (_ BitVec 64)) (t!15349 List!9135)) )
))
(declare-fun arrayNoDuplicates!0 (array!30965 (_ BitVec 32) List!9135) Bool)

(assert (=> b!479361 (= res!286008 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9132))))

(declare-fun res!286009 () Bool)

(assert (=> start!43292 (=> (not res!286009) (not e!282039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43292 (= res!286009 (validMask!0 mask!2352))))

(assert (=> start!43292 e!282039))

(assert (=> start!43292 true))

(assert (=> start!43292 tp_is_empty!13663))

(declare-fun e!282041 () Bool)

(declare-fun array_inv!10720 (array!30963) Bool)

(assert (=> start!43292 (and (array_inv!10720 _values!1516) e!282041)))

(assert (=> start!43292 tp!42723))

(declare-fun array_inv!10721 (array!30965) Bool)

(assert (=> start!43292 (array_inv!10721 _keys!1874)))

(declare-fun b!479357 () Bool)

(declare-fun res!286011 () Bool)

(assert (=> b!479357 (=> (not res!286011) (not e!282039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30965 (_ BitVec 32)) Bool)

(assert (=> b!479357 (= res!286011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479362 () Bool)

(declare-fun e!282040 () Bool)

(assert (=> b!479362 (= e!282041 (and e!282040 mapRes!22192))))

(declare-fun condMapEmpty!22192 () Bool)

(declare-fun mapDefault!22192 () ValueCell!6470)

