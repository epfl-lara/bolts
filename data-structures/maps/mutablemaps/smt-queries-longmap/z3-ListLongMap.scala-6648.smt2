; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83890 () Bool)

(assert start!83890)

(declare-fun b_free!19671 () Bool)

(declare-fun b_next!19671 () Bool)

(assert (=> start!83890 (= b_free!19671 (not b_next!19671))))

(declare-fun tp!68455 () Bool)

(declare-fun b_and!31449 () Bool)

(assert (=> start!83890 (= tp!68455 b_and!31449)))

(declare-fun b!979636 () Bool)

(declare-fun e!552240 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61341 0))(
  ( (array!61342 (arr!29524 (Array (_ BitVec 32) (_ BitVec 64))) (size!30004 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61341)

(assert (=> b!979636 (= e!552240 (bvsle from!1932 (size!30004 _keys!1544)))))

(declare-datatypes ((V!35203 0))(
  ( (V!35204 (val!11383 Int)) )
))
(declare-datatypes ((tuple2!14702 0))(
  ( (tuple2!14703 (_1!7361 (_ BitVec 64)) (_2!7361 V!35203)) )
))
(declare-fun lt!434700 () tuple2!14702)

(declare-fun lt!434699 () tuple2!14702)

(declare-datatypes ((List!20595 0))(
  ( (Nil!20592) (Cons!20591 (h!21753 tuple2!14702) (t!29230 List!20595)) )
))
(declare-datatypes ((ListLongMap!13413 0))(
  ( (ListLongMap!13414 (toList!6722 List!20595)) )
))
(declare-fun lt!434703 () ListLongMap!13413)

(declare-fun lt!434698 () ListLongMap!13413)

(declare-fun +!2928 (ListLongMap!13413 tuple2!14702) ListLongMap!13413)

(assert (=> b!979636 (= lt!434698 (+!2928 (+!2928 lt!434703 lt!434699) lt!434700))))

(declare-fun zeroValue!1220 () V!35203)

(declare-fun lt!434701 () V!35203)

(declare-datatypes ((Unit!32531 0))(
  ( (Unit!32532) )
))
(declare-fun lt!434702 () Unit!32531)

(declare-fun addCommutativeForDiffKeys!590 (ListLongMap!13413 (_ BitVec 64) V!35203 (_ BitVec 64) V!35203) Unit!32531)

(assert (=> b!979636 (= lt!434702 (addCommutativeForDiffKeys!590 lt!434703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29524 _keys!1544) from!1932) lt!434701))))

(declare-fun res!655720 () Bool)

(declare-fun e!552241 () Bool)

(assert (=> start!83890 (=> (not res!655720) (not e!552241))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83890 (= res!655720 (validMask!0 mask!1948))))

(assert (=> start!83890 e!552241))

(assert (=> start!83890 true))

(declare-fun tp_is_empty!22665 () Bool)

(assert (=> start!83890 tp_is_empty!22665))

(declare-datatypes ((ValueCell!10851 0))(
  ( (ValueCellFull!10851 (v!13945 V!35203)) (EmptyCell!10851) )
))
(declare-datatypes ((array!61343 0))(
  ( (array!61344 (arr!29525 (Array (_ BitVec 32) ValueCell!10851)) (size!30005 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61343)

(declare-fun e!552239 () Bool)

(declare-fun array_inv!22717 (array!61343) Bool)

(assert (=> start!83890 (and (array_inv!22717 _values!1278) e!552239)))

(assert (=> start!83890 tp!68455))

(declare-fun array_inv!22718 (array!61341) Bool)

(assert (=> start!83890 (array_inv!22718 _keys!1544)))

(declare-fun b!979637 () Bool)

(declare-fun e!552242 () Bool)

(assert (=> b!979637 (= e!552242 tp_is_empty!22665)))

(declare-fun b!979638 () Bool)

(declare-fun res!655715 () Bool)

(assert (=> b!979638 (=> (not res!655715) (not e!552241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979638 (= res!655715 (validKeyInArray!0 (select (arr!29524 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36026 () Bool)

(declare-fun mapRes!36026 () Bool)

(declare-fun tp!68456 () Bool)

(assert (=> mapNonEmpty!36026 (= mapRes!36026 (and tp!68456 e!552242))))

(declare-fun mapValue!36026 () ValueCell!10851)

(declare-fun mapRest!36026 () (Array (_ BitVec 32) ValueCell!10851))

(declare-fun mapKey!36026 () (_ BitVec 32))

(assert (=> mapNonEmpty!36026 (= (arr!29525 _values!1278) (store mapRest!36026 mapKey!36026 mapValue!36026))))

(declare-fun b!979639 () Bool)

(declare-fun e!552237 () Bool)

(assert (=> b!979639 (= e!552237 tp_is_empty!22665)))

(declare-fun b!979640 () Bool)

(declare-fun res!655719 () Bool)

(assert (=> b!979640 (=> (not res!655719) (not e!552241))))

(assert (=> b!979640 (= res!655719 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30004 _keys!1544))))))

(declare-fun b!979641 () Bool)

(declare-fun res!655717 () Bool)

(assert (=> b!979641 (=> (not res!655717) (not e!552241))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!979641 (= res!655717 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!979642 () Bool)

(declare-fun res!655721 () Bool)

(assert (=> b!979642 (=> (not res!655721) (not e!552241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61341 (_ BitVec 32)) Bool)

(assert (=> b!979642 (= res!655721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36026 () Bool)

(assert (=> mapIsEmpty!36026 mapRes!36026))

(declare-fun b!979643 () Bool)

(assert (=> b!979643 (= e!552241 (not e!552240))))

(declare-fun res!655718 () Bool)

(assert (=> b!979643 (=> res!655718 e!552240)))

(assert (=> b!979643 (= res!655718 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29524 _keys!1544) from!1932)))))

(declare-fun lt!434704 () ListLongMap!13413)

(declare-fun lt!434695 () tuple2!14702)

(assert (=> b!979643 (= (+!2928 lt!434704 lt!434699) (+!2928 lt!434698 lt!434695))))

(declare-fun lt!434697 () ListLongMap!13413)

(assert (=> b!979643 (= lt!434698 (+!2928 lt!434697 lt!434699))))

(assert (=> b!979643 (= lt!434699 (tuple2!14703 (select (arr!29524 _keys!1544) from!1932) lt!434701))))

(assert (=> b!979643 (= lt!434704 (+!2928 lt!434697 lt!434695))))

(declare-fun minValue!1220 () V!35203)

(assert (=> b!979643 (= lt!434695 (tuple2!14703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!434696 () Unit!32531)

(assert (=> b!979643 (= lt!434696 (addCommutativeForDiffKeys!590 lt!434697 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29524 _keys!1544) from!1932) lt!434701))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15318 (ValueCell!10851 V!35203) V!35203)

(declare-fun dynLambda!1763 (Int (_ BitVec 64)) V!35203)

(assert (=> b!979643 (= lt!434701 (get!15318 (select (arr!29525 _values!1278) from!1932) (dynLambda!1763 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!979643 (= lt!434697 (+!2928 lt!434703 lt!434700))))

(assert (=> b!979643 (= lt!434700 (tuple2!14703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3388 (array!61341 array!61343 (_ BitVec 32) (_ BitVec 32) V!35203 V!35203 (_ BitVec 32) Int) ListLongMap!13413)

(assert (=> b!979643 (= lt!434703 (getCurrentListMapNoExtraKeys!3388 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979644 () Bool)

(assert (=> b!979644 (= e!552239 (and e!552237 mapRes!36026))))

(declare-fun condMapEmpty!36026 () Bool)

(declare-fun mapDefault!36026 () ValueCell!10851)

(assert (=> b!979644 (= condMapEmpty!36026 (= (arr!29525 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10851)) mapDefault!36026)))))

(declare-fun b!979645 () Bool)

(declare-fun res!655716 () Bool)

(assert (=> b!979645 (=> (not res!655716) (not e!552241))))

(assert (=> b!979645 (= res!655716 (and (= (size!30005 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30004 _keys!1544) (size!30005 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979646 () Bool)

(declare-fun res!655722 () Bool)

(assert (=> b!979646 (=> (not res!655722) (not e!552241))))

(declare-datatypes ((List!20596 0))(
  ( (Nil!20593) (Cons!20592 (h!21754 (_ BitVec 64)) (t!29231 List!20596)) )
))
(declare-fun arrayNoDuplicates!0 (array!61341 (_ BitVec 32) List!20596) Bool)

(assert (=> b!979646 (= res!655722 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20593))))

(assert (= (and start!83890 res!655720) b!979645))

(assert (= (and b!979645 res!655716) b!979642))

(assert (= (and b!979642 res!655721) b!979646))

(assert (= (and b!979646 res!655722) b!979640))

(assert (= (and b!979640 res!655719) b!979638))

(assert (= (and b!979638 res!655715) b!979641))

(assert (= (and b!979641 res!655717) b!979643))

(assert (= (and b!979643 (not res!655718)) b!979636))

(assert (= (and b!979644 condMapEmpty!36026) mapIsEmpty!36026))

(assert (= (and b!979644 (not condMapEmpty!36026)) mapNonEmpty!36026))

(get-info :version)

(assert (= (and mapNonEmpty!36026 ((_ is ValueCellFull!10851) mapValue!36026)) b!979637))

(assert (= (and b!979644 ((_ is ValueCellFull!10851) mapDefault!36026)) b!979639))

(assert (= start!83890 b!979644))

(declare-fun b_lambda!14745 () Bool)

(assert (=> (not b_lambda!14745) (not b!979643)))

(declare-fun t!29229 () Bool)

(declare-fun tb!6485 () Bool)

(assert (=> (and start!83890 (= defaultEntry!1281 defaultEntry!1281) t!29229) tb!6485))

(declare-fun result!12951 () Bool)

(assert (=> tb!6485 (= result!12951 tp_is_empty!22665)))

(assert (=> b!979643 t!29229))

(declare-fun b_and!31451 () Bool)

(assert (= b_and!31449 (and (=> t!29229 result!12951) b_and!31451)))

(declare-fun m!907121 () Bool)

(assert (=> mapNonEmpty!36026 m!907121))

(declare-fun m!907123 () Bool)

(assert (=> b!979646 m!907123))

(declare-fun m!907125 () Bool)

(assert (=> b!979642 m!907125))

(declare-fun m!907127 () Bool)

(assert (=> b!979643 m!907127))

(declare-fun m!907129 () Bool)

(assert (=> b!979643 m!907129))

(declare-fun m!907131 () Bool)

(assert (=> b!979643 m!907131))

(declare-fun m!907133 () Bool)

(assert (=> b!979643 m!907133))

(declare-fun m!907135 () Bool)

(assert (=> b!979643 m!907135))

(declare-fun m!907137 () Bool)

(assert (=> b!979643 m!907137))

(declare-fun m!907139 () Bool)

(assert (=> b!979643 m!907139))

(declare-fun m!907141 () Bool)

(assert (=> b!979643 m!907141))

(assert (=> b!979643 m!907129))

(declare-fun m!907143 () Bool)

(assert (=> b!979643 m!907143))

(declare-fun m!907145 () Bool)

(assert (=> b!979643 m!907145))

(assert (=> b!979643 m!907131))

(assert (=> b!979643 m!907145))

(declare-fun m!907147 () Bool)

(assert (=> b!979643 m!907147))

(assert (=> b!979638 m!907129))

(assert (=> b!979638 m!907129))

(declare-fun m!907149 () Bool)

(assert (=> b!979638 m!907149))

(declare-fun m!907151 () Bool)

(assert (=> start!83890 m!907151))

(declare-fun m!907153 () Bool)

(assert (=> start!83890 m!907153))

(declare-fun m!907155 () Bool)

(assert (=> start!83890 m!907155))

(declare-fun m!907157 () Bool)

(assert (=> b!979636 m!907157))

(assert (=> b!979636 m!907157))

(declare-fun m!907159 () Bool)

(assert (=> b!979636 m!907159))

(assert (=> b!979636 m!907129))

(assert (=> b!979636 m!907129))

(declare-fun m!907161 () Bool)

(assert (=> b!979636 m!907161))

(check-sat (not mapNonEmpty!36026) (not b_next!19671) (not b!979638) (not b_lambda!14745) tp_is_empty!22665 (not start!83890) b_and!31451 (not b!979643) (not b!979642) (not b!979636) (not b!979646))
(check-sat b_and!31451 (not b_next!19671))
