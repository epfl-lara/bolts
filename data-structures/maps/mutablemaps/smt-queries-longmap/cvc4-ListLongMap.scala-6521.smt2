; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82998 () Bool)

(assert start!82998)

(declare-fun b_free!19097 () Bool)

(declare-fun b_next!19097 () Bool)

(assert (=> start!82998 (= b_free!19097 (not b_next!19097))))

(declare-fun tp!66420 () Bool)

(declare-fun b_and!30603 () Bool)

(assert (=> start!82998 (= tp!66420 b_and!30603)))

(declare-fun b!968307 () Bool)

(declare-fun res!648374 () Bool)

(declare-fun e!545703 () Bool)

(assert (=> b!968307 (=> (not res!648374) (not e!545703))))

(declare-datatypes ((array!59861 0))(
  ( (array!59862 (arr!28795 (Array (_ BitVec 32) (_ BitVec 64))) (size!29275 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59861)

(declare-datatypes ((List!20118 0))(
  ( (Nil!20115) (Cons!20114 (h!21276 (_ BitVec 64)) (t!28489 List!20118)) )
))
(declare-fun arrayNoDuplicates!0 (array!59861 (_ BitVec 32) List!20118) Bool)

(assert (=> b!968307 (= res!648374 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20115))))

(declare-fun res!648372 () Bool)

(assert (=> start!82998 (=> (not res!648372) (not e!545703))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82998 (= res!648372 (validMask!0 mask!2110))))

(assert (=> start!82998 e!545703))

(assert (=> start!82998 true))

(declare-datatypes ((V!34189 0))(
  ( (V!34190 (val!11003 Int)) )
))
(declare-datatypes ((ValueCell!10471 0))(
  ( (ValueCellFull!10471 (v!13561 V!34189)) (EmptyCell!10471) )
))
(declare-datatypes ((array!59863 0))(
  ( (array!59864 (arr!28796 (Array (_ BitVec 32) ValueCell!10471)) (size!29276 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59863)

(declare-fun e!545707 () Bool)

(declare-fun array_inv!22187 (array!59863) Bool)

(assert (=> start!82998 (and (array_inv!22187 _values!1400) e!545707)))

(declare-fun array_inv!22188 (array!59861) Bool)

(assert (=> start!82998 (array_inv!22188 _keys!1686)))

(assert (=> start!82998 tp!66420))

(declare-fun tp_is_empty!21905 () Bool)

(assert (=> start!82998 tp_is_empty!21905))

(declare-fun mapIsEmpty!34852 () Bool)

(declare-fun mapRes!34852 () Bool)

(assert (=> mapIsEmpty!34852 mapRes!34852))

(declare-fun mapNonEmpty!34852 () Bool)

(declare-fun tp!66421 () Bool)

(declare-fun e!545704 () Bool)

(assert (=> mapNonEmpty!34852 (= mapRes!34852 (and tp!66421 e!545704))))

(declare-fun mapKey!34852 () (_ BitVec 32))

(declare-fun mapValue!34852 () ValueCell!10471)

(declare-fun mapRest!34852 () (Array (_ BitVec 32) ValueCell!10471))

(assert (=> mapNonEmpty!34852 (= (arr!28796 _values!1400) (store mapRest!34852 mapKey!34852 mapValue!34852))))

(declare-fun b!968308 () Bool)

(declare-fun res!648373 () Bool)

(assert (=> b!968308 (=> (not res!648373) (not e!545703))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!968308 (= res!648373 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29275 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29275 _keys!1686))))))

(declare-fun zeroValue!1342 () V!34189)

(declare-fun b!968309 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34189)

(declare-datatypes ((tuple2!14248 0))(
  ( (tuple2!14249 (_1!7134 (_ BitVec 64)) (_2!7134 V!34189)) )
))
(declare-datatypes ((List!20119 0))(
  ( (Nil!20116) (Cons!20115 (h!21277 tuple2!14248) (t!28490 List!20119)) )
))
(declare-datatypes ((ListLongMap!12959 0))(
  ( (ListLongMap!12960 (toList!6495 List!20119)) )
))
(declare-fun contains!5546 (ListLongMap!12959 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3680 (array!59861 array!59863 (_ BitVec 32) (_ BitVec 32) V!34189 V!34189 (_ BitVec 32) Int) ListLongMap!12959)

(assert (=> b!968309 (= e!545703 (not (contains!5546 (getCurrentListMap!3680 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28795 _keys!1686) i!803))))))

(declare-fun b!968310 () Bool)

(declare-fun res!648376 () Bool)

(assert (=> b!968310 (=> (not res!648376) (not e!545703))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!968310 (= res!648376 (validKeyInArray!0 (select (arr!28795 _keys!1686) i!803)))))

(declare-fun b!968311 () Bool)

(declare-fun res!648370 () Bool)

(assert (=> b!968311 (=> (not res!648370) (not e!545703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59861 (_ BitVec 32)) Bool)

(assert (=> b!968311 (= res!648370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!968312 () Bool)

(declare-fun res!648375 () Bool)

(assert (=> b!968312 (=> (not res!648375) (not e!545703))))

(assert (=> b!968312 (= res!648375 (contains!5546 (getCurrentListMap!3680 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28795 _keys!1686) i!803)))))

(declare-fun b!968313 () Bool)

(declare-fun e!545706 () Bool)

(assert (=> b!968313 (= e!545706 tp_is_empty!21905)))

(declare-fun b!968314 () Bool)

(assert (=> b!968314 (= e!545704 tp_is_empty!21905)))

(declare-fun b!968315 () Bool)

(declare-fun res!648371 () Bool)

(assert (=> b!968315 (=> (not res!648371) (not e!545703))))

(assert (=> b!968315 (= res!648371 (bvsle from!2084 newFrom!159))))

(declare-fun b!968316 () Bool)

(declare-fun res!648377 () Bool)

(assert (=> b!968316 (=> (not res!648377) (not e!545703))))

(assert (=> b!968316 (= res!648377 (and (= (size!29276 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29275 _keys!1686) (size!29276 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!968317 () Bool)

(assert (=> b!968317 (= e!545707 (and e!545706 mapRes!34852))))

(declare-fun condMapEmpty!34852 () Bool)

(declare-fun mapDefault!34852 () ValueCell!10471)

