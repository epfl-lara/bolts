; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83304 () Bool)

(assert start!83304)

(declare-fun b_free!19269 () Bool)

(declare-fun b_next!19269 () Bool)

(assert (=> start!83304 (= b_free!19269 (not b_next!19269))))

(declare-fun tp!67087 () Bool)

(declare-fun b_and!30777 () Bool)

(assert (=> start!83304 (= tp!67087 b_and!30777)))

(declare-fun b!971696 () Bool)

(declare-fun e!547771 () Bool)

(declare-fun tp_is_empty!22167 () Bool)

(assert (=> b!971696 (= e!547771 tp_is_empty!22167)))

(declare-fun mapIsEmpty!35260 () Bool)

(declare-fun mapRes!35260 () Bool)

(assert (=> mapIsEmpty!35260 mapRes!35260))

(declare-fun b!971697 () Bool)

(declare-fun res!650520 () Bool)

(declare-fun e!547772 () Bool)

(assert (=> b!971697 (=> (not res!650520) (not e!547772))))

(declare-datatypes ((array!60365 0))(
  ( (array!60366 (arr!29042 (Array (_ BitVec 32) (_ BitVec 64))) (size!29522 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60365)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60365 (_ BitVec 32)) Bool)

(assert (=> b!971697 (= res!650520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971698 () Bool)

(declare-fun res!650519 () Bool)

(assert (=> b!971698 (=> (not res!650519) (not e!547772))))

(declare-datatypes ((V!34539 0))(
  ( (V!34540 (val!11134 Int)) )
))
(declare-datatypes ((ValueCell!10602 0))(
  ( (ValueCellFull!10602 (v!13693 V!34539)) (EmptyCell!10602) )
))
(declare-datatypes ((array!60367 0))(
  ( (array!60368 (arr!29043 (Array (_ BitVec 32) ValueCell!10602)) (size!29523 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60367)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!971698 (= res!650519 (and (= (size!29523 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29522 _keys!1717) (size!29523 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971699 () Bool)

(declare-fun e!547773 () Bool)

(assert (=> b!971699 (= e!547773 tp_is_empty!22167)))

(declare-fun b!971700 () Bool)

(declare-fun res!650514 () Bool)

(assert (=> b!971700 (=> (not res!650514) (not e!547772))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971700 (= res!650514 (validKeyInArray!0 (select (arr!29042 _keys!1717) i!822)))))

(declare-fun b!971701 () Bool)

(declare-fun e!547769 () Bool)

(assert (=> b!971701 (= e!547772 e!547769)))

(declare-fun res!650518 () Bool)

(assert (=> b!971701 (=> (not res!650518) (not e!547769))))

(declare-fun lt!431829 () (_ BitVec 64))

(assert (=> b!971701 (= res!650518 (validKeyInArray!0 lt!431829))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!971701 (= lt!431829 (select (arr!29042 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun zeroValue!1367 () V!34539)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34539)

(declare-datatypes ((tuple2!14374 0))(
  ( (tuple2!14375 (_1!7197 (_ BitVec 64)) (_2!7197 V!34539)) )
))
(declare-datatypes ((List!20266 0))(
  ( (Nil!20263) (Cons!20262 (h!21424 tuple2!14374) (t!28641 List!20266)) )
))
(declare-datatypes ((ListLongMap!13085 0))(
  ( (ListLongMap!13086 (toList!6558 List!20266)) )
))
(declare-fun lt!431830 () ListLongMap!13085)

(declare-fun getCurrentListMap!3743 (array!60365 array!60367 (_ BitVec 32) (_ BitVec 32) V!34539 V!34539 (_ BitVec 32) Int) ListLongMap!13085)

(assert (=> b!971701 (= lt!431830 (getCurrentListMap!3743 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun res!650521 () Bool)

(assert (=> start!83304 (=> (not res!650521) (not e!547772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83304 (= res!650521 (validMask!0 mask!2147))))

(assert (=> start!83304 e!547772))

(assert (=> start!83304 true))

(declare-fun e!547768 () Bool)

(declare-fun array_inv!22365 (array!60367) Bool)

(assert (=> start!83304 (and (array_inv!22365 _values!1425) e!547768)))

(assert (=> start!83304 tp_is_empty!22167))

(assert (=> start!83304 tp!67087))

(declare-fun array_inv!22366 (array!60365) Bool)

(assert (=> start!83304 (array_inv!22366 _keys!1717)))

(declare-fun b!971702 () Bool)

(declare-fun res!650515 () Bool)

(assert (=> b!971702 (=> (not res!650515) (not e!547772))))

(declare-datatypes ((List!20267 0))(
  ( (Nil!20264) (Cons!20263 (h!21425 (_ BitVec 64)) (t!28642 List!20267)) )
))
(declare-fun arrayNoDuplicates!0 (array!60365 (_ BitVec 32) List!20267) Bool)

(assert (=> b!971702 (= res!650515 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20264))))

(declare-fun b!971703 () Bool)

(assert (=> b!971703 (= e!547769 (not true))))

(declare-fun +!2839 (ListLongMap!13085 tuple2!14374) ListLongMap!13085)

(declare-fun get!15064 (ValueCell!10602 V!34539) V!34539)

(declare-fun dynLambda!1678 (Int (_ BitVec 64)) V!34539)

(assert (=> b!971703 (= lt!431830 (+!2839 (getCurrentListMap!3743 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14375 lt!431829 (get!15064 (select (arr!29043 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1678 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32339 0))(
  ( (Unit!32340) )
))
(declare-fun lt!431828 () Unit!32339)

(declare-fun lemmaListMapRecursiveValidKeyArray!250 (array!60365 array!60367 (_ BitVec 32) (_ BitVec 32) V!34539 V!34539 (_ BitVec 32) Int) Unit!32339)

(assert (=> b!971703 (= lt!431828 (lemmaListMapRecursiveValidKeyArray!250 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971704 () Bool)

(assert (=> b!971704 (= e!547768 (and e!547771 mapRes!35260))))

(declare-fun condMapEmpty!35260 () Bool)

(declare-fun mapDefault!35260 () ValueCell!10602)

(assert (=> b!971704 (= condMapEmpty!35260 (= (arr!29043 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10602)) mapDefault!35260)))))

(declare-fun mapNonEmpty!35260 () Bool)

(declare-fun tp!67086 () Bool)

(assert (=> mapNonEmpty!35260 (= mapRes!35260 (and tp!67086 e!547773))))

(declare-fun mapRest!35260 () (Array (_ BitVec 32) ValueCell!10602))

(declare-fun mapValue!35260 () ValueCell!10602)

(declare-fun mapKey!35260 () (_ BitVec 32))

(assert (=> mapNonEmpty!35260 (= (arr!29043 _values!1425) (store mapRest!35260 mapKey!35260 mapValue!35260))))

(declare-fun b!971705 () Bool)

(declare-fun res!650517 () Bool)

(assert (=> b!971705 (=> (not res!650517) (not e!547772))))

(declare-fun contains!5608 (ListLongMap!13085 (_ BitVec 64)) Bool)

(assert (=> b!971705 (= res!650517 (contains!5608 (getCurrentListMap!3743 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29042 _keys!1717) i!822)))))

(declare-fun b!971706 () Bool)

(declare-fun res!650516 () Bool)

(assert (=> b!971706 (=> (not res!650516) (not e!547772))))

(assert (=> b!971706 (= res!650516 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29522 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29522 _keys!1717))))))

(assert (= (and start!83304 res!650521) b!971698))

(assert (= (and b!971698 res!650519) b!971697))

(assert (= (and b!971697 res!650520) b!971702))

(assert (= (and b!971702 res!650515) b!971706))

(assert (= (and b!971706 res!650516) b!971700))

(assert (= (and b!971700 res!650514) b!971705))

(assert (= (and b!971705 res!650517) b!971701))

(assert (= (and b!971701 res!650518) b!971703))

(assert (= (and b!971704 condMapEmpty!35260) mapIsEmpty!35260))

(assert (= (and b!971704 (not condMapEmpty!35260)) mapNonEmpty!35260))

(get-info :version)

(assert (= (and mapNonEmpty!35260 ((_ is ValueCellFull!10602) mapValue!35260)) b!971699))

(assert (= (and b!971704 ((_ is ValueCellFull!10602) mapDefault!35260)) b!971696))

(assert (= start!83304 b!971704))

(declare-fun b_lambda!14463 () Bool)

(assert (=> (not b_lambda!14463) (not b!971703)))

(declare-fun t!28640 () Bool)

(declare-fun tb!6225 () Bool)

(assert (=> (and start!83304 (= defaultEntry!1428 defaultEntry!1428) t!28640) tb!6225))

(declare-fun result!12419 () Bool)

(assert (=> tb!6225 (= result!12419 tp_is_empty!22167)))

(assert (=> b!971703 t!28640))

(declare-fun b_and!30779 () Bool)

(assert (= b_and!30777 (and (=> t!28640 result!12419) b_and!30779)))

(declare-fun m!899161 () Bool)

(assert (=> b!971702 m!899161))

(declare-fun m!899163 () Bool)

(assert (=> b!971703 m!899163))

(declare-fun m!899165 () Bool)

(assert (=> b!971703 m!899165))

(declare-fun m!899167 () Bool)

(assert (=> b!971703 m!899167))

(assert (=> b!971703 m!899165))

(declare-fun m!899169 () Bool)

(assert (=> b!971703 m!899169))

(declare-fun m!899171 () Bool)

(assert (=> b!971703 m!899171))

(assert (=> b!971703 m!899167))

(assert (=> b!971703 m!899163))

(declare-fun m!899173 () Bool)

(assert (=> b!971703 m!899173))

(declare-fun m!899175 () Bool)

(assert (=> start!83304 m!899175))

(declare-fun m!899177 () Bool)

(assert (=> start!83304 m!899177))

(declare-fun m!899179 () Bool)

(assert (=> start!83304 m!899179))

(declare-fun m!899181 () Bool)

(assert (=> b!971701 m!899181))

(declare-fun m!899183 () Bool)

(assert (=> b!971701 m!899183))

(declare-fun m!899185 () Bool)

(assert (=> b!971701 m!899185))

(declare-fun m!899187 () Bool)

(assert (=> b!971697 m!899187))

(declare-fun m!899189 () Bool)

(assert (=> b!971705 m!899189))

(declare-fun m!899191 () Bool)

(assert (=> b!971705 m!899191))

(assert (=> b!971705 m!899189))

(assert (=> b!971705 m!899191))

(declare-fun m!899193 () Bool)

(assert (=> b!971705 m!899193))

(declare-fun m!899195 () Bool)

(assert (=> mapNonEmpty!35260 m!899195))

(assert (=> b!971700 m!899191))

(assert (=> b!971700 m!899191))

(declare-fun m!899197 () Bool)

(assert (=> b!971700 m!899197))

(check-sat (not start!83304) (not b!971697) (not b!971700) (not b!971701) (not b!971703) (not b!971702) (not b_next!19269) (not b!971705) b_and!30779 tp_is_empty!22167 (not b_lambda!14463) (not mapNonEmpty!35260))
(check-sat b_and!30779 (not b_next!19269))
