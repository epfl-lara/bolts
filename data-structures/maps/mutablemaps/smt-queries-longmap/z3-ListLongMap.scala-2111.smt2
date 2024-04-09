; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35844 () Bool)

(assert start!35844)

(declare-fun b!359914 () Bool)

(declare-fun e!220432 () Bool)

(assert (=> b!359914 (= e!220432 (not true))))

(declare-datatypes ((array!20099 0))(
  ( (array!20100 (arr!9540 (Array (_ BitVec 32) (_ BitVec 64))) (size!9892 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20099)

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!20099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!359914 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!12029 0))(
  ( (V!12030 (val!4189 Int)) )
))
(declare-fun minValue!1150 () V!12029)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((Unit!11065 0))(
  ( (Unit!11066) )
))
(declare-fun lt!166381 () Unit!11065)

(declare-datatypes ((ValueCell!3801 0))(
  ( (ValueCellFull!3801 (v!6379 V!12029)) (EmptyCell!3801) )
))
(declare-datatypes ((array!20101 0))(
  ( (array!20102 (arr!9541 (Array (_ BitVec 32) ValueCell!3801)) (size!9893 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20101)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!12029)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!49 (array!20099 array!20101 (_ BitVec 32) (_ BitVec 32) V!12029 V!12029 (_ BitVec 64) (_ BitVec 32)) Unit!11065)

(assert (=> b!359914 (= lt!166381 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!49 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!359915 () Bool)

(declare-fun e!220435 () Bool)

(declare-fun tp_is_empty!8289 () Bool)

(assert (=> b!359915 (= e!220435 tp_is_empty!8289)))

(declare-fun mapNonEmpty!13941 () Bool)

(declare-fun mapRes!13941 () Bool)

(declare-fun tp!28008 () Bool)

(assert (=> mapNonEmpty!13941 (= mapRes!13941 (and tp!28008 e!220435))))

(declare-fun mapValue!13941 () ValueCell!3801)

(declare-fun mapKey!13941 () (_ BitVec 32))

(declare-fun mapRest!13941 () (Array (_ BitVec 32) ValueCell!3801))

(assert (=> mapNonEmpty!13941 (= (arr!9541 _values!1208) (store mapRest!13941 mapKey!13941 mapValue!13941))))

(declare-fun mapIsEmpty!13941 () Bool)

(assert (=> mapIsEmpty!13941 mapRes!13941))

(declare-fun b!359916 () Bool)

(declare-fun res!200182 () Bool)

(assert (=> b!359916 (=> (not res!200182) (not e!220432))))

(assert (=> b!359916 (= res!200182 (not (= (select (arr!9540 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!359917 () Bool)

(declare-fun res!200176 () Bool)

(assert (=> b!359917 (=> (not res!200176) (not e!220432))))

(assert (=> b!359917 (= res!200176 (and (= (size!9893 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9892 _keys!1456) (size!9893 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359919 () Bool)

(declare-fun e!220433 () Bool)

(assert (=> b!359919 (= e!220433 tp_is_empty!8289)))

(declare-fun b!359920 () Bool)

(declare-fun res!200177 () Bool)

(assert (=> b!359920 (=> (not res!200177) (not e!220432))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20099 (_ BitVec 32)) Bool)

(assert (=> b!359920 (= res!200177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359921 () Bool)

(declare-fun res!200179 () Bool)

(assert (=> b!359921 (=> (not res!200179) (not e!220432))))

(assert (=> b!359921 (= res!200179 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9892 _keys!1456))))))

(declare-fun b!359922 () Bool)

(declare-fun res!200178 () Bool)

(assert (=> b!359922 (=> (not res!200178) (not e!220432))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!359922 (= res!200178 (validKeyInArray!0 k0!1077))))

(declare-fun b!359923 () Bool)

(declare-fun res!200175 () Bool)

(assert (=> b!359923 (=> (not res!200175) (not e!220432))))

(declare-datatypes ((List!5509 0))(
  ( (Nil!5506) (Cons!5505 (h!6361 (_ BitVec 64)) (t!10667 List!5509)) )
))
(declare-fun arrayNoDuplicates!0 (array!20099 (_ BitVec 32) List!5509) Bool)

(assert (=> b!359923 (= res!200175 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5506))))

(declare-fun b!359924 () Bool)

(declare-fun res!200180 () Bool)

(assert (=> b!359924 (=> (not res!200180) (not e!220432))))

(assert (=> b!359924 (= res!200180 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun res!200181 () Bool)

(assert (=> start!35844 (=> (not res!200181) (not e!220432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35844 (= res!200181 (validMask!0 mask!1842))))

(assert (=> start!35844 e!220432))

(assert (=> start!35844 tp_is_empty!8289))

(assert (=> start!35844 true))

(declare-fun array_inv!7020 (array!20099) Bool)

(assert (=> start!35844 (array_inv!7020 _keys!1456)))

(declare-fun e!220434 () Bool)

(declare-fun array_inv!7021 (array!20101) Bool)

(assert (=> start!35844 (and (array_inv!7021 _values!1208) e!220434)))

(declare-fun b!359918 () Bool)

(assert (=> b!359918 (= e!220434 (and e!220433 mapRes!13941))))

(declare-fun condMapEmpty!13941 () Bool)

(declare-fun mapDefault!13941 () ValueCell!3801)

(assert (=> b!359918 (= condMapEmpty!13941 (= (arr!9541 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3801)) mapDefault!13941)))))

(assert (= (and start!35844 res!200181) b!359917))

(assert (= (and b!359917 res!200176) b!359920))

(assert (= (and b!359920 res!200177) b!359923))

(assert (= (and b!359923 res!200175) b!359922))

(assert (= (and b!359922 res!200178) b!359921))

(assert (= (and b!359921 res!200179) b!359924))

(assert (= (and b!359924 res!200180) b!359916))

(assert (= (and b!359916 res!200182) b!359914))

(assert (= (and b!359918 condMapEmpty!13941) mapIsEmpty!13941))

(assert (= (and b!359918 (not condMapEmpty!13941)) mapNonEmpty!13941))

(get-info :version)

(assert (= (and mapNonEmpty!13941 ((_ is ValueCellFull!3801) mapValue!13941)) b!359915))

(assert (= (and b!359918 ((_ is ValueCellFull!3801) mapDefault!13941)) b!359919))

(assert (= start!35844 b!359918))

(declare-fun m!357229 () Bool)

(assert (=> b!359914 m!357229))

(declare-fun m!357231 () Bool)

(assert (=> b!359914 m!357231))

(declare-fun m!357233 () Bool)

(assert (=> start!35844 m!357233))

(declare-fun m!357235 () Bool)

(assert (=> start!35844 m!357235))

(declare-fun m!357237 () Bool)

(assert (=> start!35844 m!357237))

(declare-fun m!357239 () Bool)

(assert (=> b!359923 m!357239))

(declare-fun m!357241 () Bool)

(assert (=> b!359920 m!357241))

(declare-fun m!357243 () Bool)

(assert (=> mapNonEmpty!13941 m!357243))

(declare-fun m!357245 () Bool)

(assert (=> b!359916 m!357245))

(declare-fun m!357247 () Bool)

(assert (=> b!359922 m!357247))

(declare-fun m!357249 () Bool)

(assert (=> b!359924 m!357249))

(check-sat (not b!359924) tp_is_empty!8289 (not b!359923) (not start!35844) (not mapNonEmpty!13941) (not b!359914) (not b!359922) (not b!359920))
(check-sat)
