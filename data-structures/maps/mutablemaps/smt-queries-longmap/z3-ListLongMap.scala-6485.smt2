; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82780 () Bool)

(assert start!82780)

(declare-fun b_free!18885 () Bool)

(declare-fun b_next!18885 () Bool)

(assert (=> start!82780 (= b_free!18885 (not b_next!18885))))

(declare-fun tp!65776 () Bool)

(declare-fun b_and!30391 () Bool)

(assert (=> start!82780 (= tp!65776 b_and!30391)))

(declare-fun res!646090 () Bool)

(declare-fun e!544052 () Bool)

(assert (=> start!82780 (=> (not res!646090) (not e!544052))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82780 (= res!646090 (validMask!0 mask!2110))))

(assert (=> start!82780 e!544052))

(assert (=> start!82780 true))

(declare-datatypes ((V!33899 0))(
  ( (V!33900 (val!10894 Int)) )
))
(declare-datatypes ((ValueCell!10362 0))(
  ( (ValueCellFull!10362 (v!13452 V!33899)) (EmptyCell!10362) )
))
(declare-datatypes ((array!59441 0))(
  ( (array!59442 (arr!28585 (Array (_ BitVec 32) ValueCell!10362)) (size!29065 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59441)

(declare-fun e!544050 () Bool)

(declare-fun array_inv!22045 (array!59441) Bool)

(assert (=> start!82780 (and (array_inv!22045 _values!1400) e!544050)))

(declare-datatypes ((array!59443 0))(
  ( (array!59444 (arr!28586 (Array (_ BitVec 32) (_ BitVec 64))) (size!29066 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59443)

(declare-fun array_inv!22046 (array!59443) Bool)

(assert (=> start!82780 (array_inv!22046 _keys!1686)))

(assert (=> start!82780 tp!65776))

(declare-fun tp_is_empty!21687 () Bool)

(assert (=> start!82780 tp_is_empty!21687))

(declare-fun mapIsEmpty!34525 () Bool)

(declare-fun mapRes!34525 () Bool)

(assert (=> mapIsEmpty!34525 mapRes!34525))

(declare-fun b!965042 () Bool)

(declare-fun res!646086 () Bool)

(assert (=> b!965042 (=> (not res!646086) (not e!544052))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!965042 (= res!646086 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29066 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29066 _keys!1686))))))

(declare-fun b!965043 () Bool)

(declare-fun e!544053 () Bool)

(assert (=> b!965043 (= e!544050 (and e!544053 mapRes!34525))))

(declare-fun condMapEmpty!34525 () Bool)

(declare-fun mapDefault!34525 () ValueCell!10362)

(assert (=> b!965043 (= condMapEmpty!34525 (= (arr!28585 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10362)) mapDefault!34525)))))

(declare-fun mapNonEmpty!34525 () Bool)

(declare-fun tp!65775 () Bool)

(declare-fun e!544051 () Bool)

(assert (=> mapNonEmpty!34525 (= mapRes!34525 (and tp!65775 e!544051))))

(declare-fun mapValue!34525 () ValueCell!10362)

(declare-fun mapRest!34525 () (Array (_ BitVec 32) ValueCell!10362))

(declare-fun mapKey!34525 () (_ BitVec 32))

(assert (=> mapNonEmpty!34525 (= (arr!28585 _values!1400) (store mapRest!34525 mapKey!34525 mapValue!34525))))

(declare-fun b!965044 () Bool)

(assert (=> b!965044 (= e!544052 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33899)

(declare-fun lt!431157 () Bool)

(declare-fun zeroValue!1342 () V!33899)

(declare-fun defaultEntry!1403 () Int)

(declare-datatypes ((tuple2!14084 0))(
  ( (tuple2!14085 (_1!7052 (_ BitVec 64)) (_2!7052 V!33899)) )
))
(declare-datatypes ((List!19960 0))(
  ( (Nil!19957) (Cons!19956 (h!21118 tuple2!14084) (t!28331 List!19960)) )
))
(declare-datatypes ((ListLongMap!12795 0))(
  ( (ListLongMap!12796 (toList!6413 List!19960)) )
))
(declare-fun contains!5467 (ListLongMap!12795 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3598 (array!59443 array!59441 (_ BitVec 32) (_ BitVec 32) V!33899 V!33899 (_ BitVec 32) Int) ListLongMap!12795)

(assert (=> b!965044 (= lt!431157 (contains!5467 (getCurrentListMap!3598 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28586 _keys!1686) i!803)))))

(declare-fun b!965045 () Bool)

(declare-fun res!646087 () Bool)

(assert (=> b!965045 (=> (not res!646087) (not e!544052))))

(assert (=> b!965045 (= res!646087 (and (= (size!29065 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29066 _keys!1686) (size!29065 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965046 () Bool)

(assert (=> b!965046 (= e!544051 tp_is_empty!21687)))

(declare-fun b!965047 () Bool)

(declare-fun res!646091 () Bool)

(assert (=> b!965047 (=> (not res!646091) (not e!544052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965047 (= res!646091 (validKeyInArray!0 (select (arr!28586 _keys!1686) i!803)))))

(declare-fun b!965048 () Bool)

(assert (=> b!965048 (= e!544053 tp_is_empty!21687)))

(declare-fun b!965049 () Bool)

(declare-fun res!646088 () Bool)

(assert (=> b!965049 (=> (not res!646088) (not e!544052))))

(declare-datatypes ((List!19961 0))(
  ( (Nil!19958) (Cons!19957 (h!21119 (_ BitVec 64)) (t!28332 List!19961)) )
))
(declare-fun arrayNoDuplicates!0 (array!59443 (_ BitVec 32) List!19961) Bool)

(assert (=> b!965049 (= res!646088 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19958))))

(declare-fun b!965050 () Bool)

(declare-fun res!646089 () Bool)

(assert (=> b!965050 (=> (not res!646089) (not e!544052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59443 (_ BitVec 32)) Bool)

(assert (=> b!965050 (= res!646089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(assert (= (and start!82780 res!646090) b!965045))

(assert (= (and b!965045 res!646087) b!965050))

(assert (= (and b!965050 res!646089) b!965049))

(assert (= (and b!965049 res!646088) b!965042))

(assert (= (and b!965042 res!646086) b!965047))

(assert (= (and b!965047 res!646091) b!965044))

(assert (= (and b!965043 condMapEmpty!34525) mapIsEmpty!34525))

(assert (= (and b!965043 (not condMapEmpty!34525)) mapNonEmpty!34525))

(get-info :version)

(assert (= (and mapNonEmpty!34525 ((_ is ValueCellFull!10362) mapValue!34525)) b!965046))

(assert (= (and b!965043 ((_ is ValueCellFull!10362) mapDefault!34525)) b!965048))

(assert (= start!82780 b!965043))

(declare-fun m!894285 () Bool)

(assert (=> b!965050 m!894285))

(declare-fun m!894287 () Bool)

(assert (=> mapNonEmpty!34525 m!894287))

(declare-fun m!894289 () Bool)

(assert (=> b!965044 m!894289))

(declare-fun m!894291 () Bool)

(assert (=> b!965044 m!894291))

(assert (=> b!965044 m!894289))

(assert (=> b!965044 m!894291))

(declare-fun m!894293 () Bool)

(assert (=> b!965044 m!894293))

(declare-fun m!894295 () Bool)

(assert (=> b!965049 m!894295))

(assert (=> b!965047 m!894291))

(assert (=> b!965047 m!894291))

(declare-fun m!894297 () Bool)

(assert (=> b!965047 m!894297))

(declare-fun m!894299 () Bool)

(assert (=> start!82780 m!894299))

(declare-fun m!894301 () Bool)

(assert (=> start!82780 m!894301))

(declare-fun m!894303 () Bool)

(assert (=> start!82780 m!894303))

(check-sat (not b!965047) (not b_next!18885) (not b!965050) (not b!965044) (not mapNonEmpty!34525) (not start!82780) (not b!965049) b_and!30391 tp_is_empty!21687)
(check-sat b_and!30391 (not b_next!18885))
