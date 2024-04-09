; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83358 () Bool)

(assert start!83358)

(declare-fun b_free!19323 () Bool)

(declare-fun b_next!19323 () Bool)

(assert (=> start!83358 (= b_free!19323 (not b_next!19323))))

(declare-fun tp!67249 () Bool)

(declare-fun b_and!30885 () Bool)

(assert (=> start!83358 (= tp!67249 b_and!30885)))

(declare-fun b!972641 () Bool)

(declare-fun e!548256 () Bool)

(declare-fun tp_is_empty!22221 () Bool)

(assert (=> b!972641 (= e!548256 tp_is_empty!22221)))

(declare-fun b!972642 () Bool)

(declare-fun res!651162 () Bool)

(declare-fun e!548258 () Bool)

(assert (=> b!972642 (=> (not res!651162) (not e!548258))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34611 0))(
  ( (V!34612 (val!11161 Int)) )
))
(declare-datatypes ((ValueCell!10629 0))(
  ( (ValueCellFull!10629 (v!13720 V!34611)) (EmptyCell!10629) )
))
(declare-datatypes ((array!60469 0))(
  ( (array!60470 (arr!29094 (Array (_ BitVec 32) ValueCell!10629)) (size!29574 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60469)

(declare-fun zeroValue!1367 () V!34611)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34611)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60471 0))(
  ( (array!60472 (arr!29095 (Array (_ BitVec 32) (_ BitVec 64))) (size!29575 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60471)

(declare-fun defaultEntry!1428 () Int)

(declare-datatypes ((tuple2!14418 0))(
  ( (tuple2!14419 (_1!7219 (_ BitVec 64)) (_2!7219 V!34611)) )
))
(declare-datatypes ((List!20306 0))(
  ( (Nil!20303) (Cons!20302 (h!21464 tuple2!14418) (t!28735 List!20306)) )
))
(declare-datatypes ((ListLongMap!13129 0))(
  ( (ListLongMap!13130 (toList!6580 List!20306)) )
))
(declare-fun contains!5627 (ListLongMap!13129 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3765 (array!60471 array!60469 (_ BitVec 32) (_ BitVec 32) V!34611 V!34611 (_ BitVec 32) Int) ListLongMap!13129)

(assert (=> b!972642 (= res!651162 (contains!5627 (getCurrentListMap!3765 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29095 _keys!1717) i!822)))))

(declare-fun b!972643 () Bool)

(declare-fun res!651166 () Bool)

(assert (=> b!972643 (=> (not res!651166) (not e!548258))))

(assert (=> b!972643 (= res!651166 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29575 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29575 _keys!1717))))))

(declare-fun mapIsEmpty!35341 () Bool)

(declare-fun mapRes!35341 () Bool)

(assert (=> mapIsEmpty!35341 mapRes!35341))

(declare-fun b!972644 () Bool)

(declare-fun e!548255 () Bool)

(assert (=> b!972644 (= e!548255 tp_is_empty!22221)))

(declare-fun b!972645 () Bool)

(declare-fun e!548259 () Bool)

(assert (=> b!972645 (= e!548259 (and e!548256 mapRes!35341))))

(declare-fun condMapEmpty!35341 () Bool)

(declare-fun mapDefault!35341 () ValueCell!10629)

(assert (=> b!972645 (= condMapEmpty!35341 (= (arr!29094 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10629)) mapDefault!35341)))))

(declare-fun b!972646 () Bool)

(declare-fun res!651169 () Bool)

(assert (=> b!972646 (=> (not res!651169) (not e!548258))))

(assert (=> b!972646 (= res!651169 (and (= (size!29574 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29575 _keys!1717) (size!29574 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972647 () Bool)

(declare-fun res!651163 () Bool)

(assert (=> b!972647 (=> (not res!651163) (not e!548258))))

(declare-datatypes ((List!20307 0))(
  ( (Nil!20304) (Cons!20303 (h!21465 (_ BitVec 64)) (t!28736 List!20307)) )
))
(declare-fun arrayNoDuplicates!0 (array!60471 (_ BitVec 32) List!20307) Bool)

(assert (=> b!972647 (= res!651163 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20304))))

(declare-fun mapNonEmpty!35341 () Bool)

(declare-fun tp!67248 () Bool)

(assert (=> mapNonEmpty!35341 (= mapRes!35341 (and tp!67248 e!548255))))

(declare-fun mapKey!35341 () (_ BitVec 32))

(declare-fun mapValue!35341 () ValueCell!10629)

(declare-fun mapRest!35341 () (Array (_ BitVec 32) ValueCell!10629))

(assert (=> mapNonEmpty!35341 (= (arr!29094 _values!1425) (store mapRest!35341 mapKey!35341 mapValue!35341))))

(declare-fun b!972648 () Bool)

(declare-fun res!651167 () Bool)

(assert (=> b!972648 (=> (not res!651167) (not e!548258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60471 (_ BitVec 32)) Bool)

(assert (=> b!972648 (= res!651167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!972649 () Bool)

(declare-fun res!651164 () Bool)

(assert (=> b!972649 (=> (not res!651164) (not e!548258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972649 (= res!651164 (validKeyInArray!0 (select (arr!29095 _keys!1717) i!822)))))

(declare-fun res!651168 () Bool)

(assert (=> start!83358 (=> (not res!651168) (not e!548258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83358 (= res!651168 (validMask!0 mask!2147))))

(assert (=> start!83358 e!548258))

(assert (=> start!83358 true))

(declare-fun array_inv!22405 (array!60469) Bool)

(assert (=> start!83358 (and (array_inv!22405 _values!1425) e!548259)))

(assert (=> start!83358 tp_is_empty!22221))

(assert (=> start!83358 tp!67249))

(declare-fun array_inv!22406 (array!60471) Bool)

(assert (=> start!83358 (array_inv!22406 _keys!1717)))

(declare-fun b!972650 () Bool)

(declare-fun e!548254 () Bool)

(assert (=> b!972650 (= e!548254 (not true))))

(declare-fun lt!432073 () ListLongMap!13129)

(declare-fun lt!432071 () (_ BitVec 64))

(declare-fun +!2854 (ListLongMap!13129 tuple2!14418) ListLongMap!13129)

(declare-fun get!15097 (ValueCell!10629 V!34611) V!34611)

(declare-fun dynLambda!1693 (Int (_ BitVec 64)) V!34611)

(assert (=> b!972650 (= lt!432073 (+!2854 (getCurrentListMap!3765 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14419 lt!432071 (get!15097 (select (arr!29094 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1693 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32369 0))(
  ( (Unit!32370) )
))
(declare-fun lt!432072 () Unit!32369)

(declare-fun lemmaListMapRecursiveValidKeyArray!265 (array!60471 array!60469 (_ BitVec 32) (_ BitVec 32) V!34611 V!34611 (_ BitVec 32) Int) Unit!32369)

(assert (=> b!972650 (= lt!432072 (lemmaListMapRecursiveValidKeyArray!265 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972651 () Bool)

(assert (=> b!972651 (= e!548258 e!548254)))

(declare-fun res!651165 () Bool)

(assert (=> b!972651 (=> (not res!651165) (not e!548254))))

(assert (=> b!972651 (= res!651165 (validKeyInArray!0 lt!432071))))

(assert (=> b!972651 (= lt!432071 (select (arr!29095 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!972651 (= lt!432073 (getCurrentListMap!3765 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(assert (= (and start!83358 res!651168) b!972646))

(assert (= (and b!972646 res!651169) b!972648))

(assert (= (and b!972648 res!651167) b!972647))

(assert (= (and b!972647 res!651163) b!972643))

(assert (= (and b!972643 res!651166) b!972649))

(assert (= (and b!972649 res!651164) b!972642))

(assert (= (and b!972642 res!651162) b!972651))

(assert (= (and b!972651 res!651165) b!972650))

(assert (= (and b!972645 condMapEmpty!35341) mapIsEmpty!35341))

(assert (= (and b!972645 (not condMapEmpty!35341)) mapNonEmpty!35341))

(get-info :version)

(assert (= (and mapNonEmpty!35341 ((_ is ValueCellFull!10629) mapValue!35341)) b!972644))

(assert (= (and b!972645 ((_ is ValueCellFull!10629) mapDefault!35341)) b!972641))

(assert (= start!83358 b!972645))

(declare-fun b_lambda!14517 () Bool)

(assert (=> (not b_lambda!14517) (not b!972650)))

(declare-fun t!28734 () Bool)

(declare-fun tb!6279 () Bool)

(assert (=> (and start!83358 (= defaultEntry!1428 defaultEntry!1428) t!28734) tb!6279))

(declare-fun result!12527 () Bool)

(assert (=> tb!6279 (= result!12527 tp_is_empty!22221)))

(assert (=> b!972650 t!28734))

(declare-fun b_and!30887 () Bool)

(assert (= b_and!30885 (and (=> t!28734 result!12527) b_and!30887)))

(declare-fun m!900187 () Bool)

(assert (=> b!972650 m!900187))

(declare-fun m!900189 () Bool)

(assert (=> b!972650 m!900189))

(declare-fun m!900191 () Bool)

(assert (=> b!972650 m!900191))

(assert (=> b!972650 m!900189))

(declare-fun m!900193 () Bool)

(assert (=> b!972650 m!900193))

(assert (=> b!972650 m!900187))

(assert (=> b!972650 m!900191))

(declare-fun m!900195 () Bool)

(assert (=> b!972650 m!900195))

(declare-fun m!900197 () Bool)

(assert (=> b!972650 m!900197))

(declare-fun m!900199 () Bool)

(assert (=> start!83358 m!900199))

(declare-fun m!900201 () Bool)

(assert (=> start!83358 m!900201))

(declare-fun m!900203 () Bool)

(assert (=> start!83358 m!900203))

(declare-fun m!900205 () Bool)

(assert (=> mapNonEmpty!35341 m!900205))

(declare-fun m!900207 () Bool)

(assert (=> b!972649 m!900207))

(assert (=> b!972649 m!900207))

(declare-fun m!900209 () Bool)

(assert (=> b!972649 m!900209))

(declare-fun m!900211 () Bool)

(assert (=> b!972642 m!900211))

(assert (=> b!972642 m!900207))

(assert (=> b!972642 m!900211))

(assert (=> b!972642 m!900207))

(declare-fun m!900213 () Bool)

(assert (=> b!972642 m!900213))

(declare-fun m!900215 () Bool)

(assert (=> b!972651 m!900215))

(declare-fun m!900217 () Bool)

(assert (=> b!972651 m!900217))

(declare-fun m!900219 () Bool)

(assert (=> b!972651 m!900219))

(declare-fun m!900221 () Bool)

(assert (=> b!972648 m!900221))

(declare-fun m!900223 () Bool)

(assert (=> b!972647 m!900223))

(check-sat (not b_next!19323) (not start!83358) (not mapNonEmpty!35341) (not b_lambda!14517) (not b!972650) tp_is_empty!22221 (not b!972647) (not b!972649) (not b!972651) (not b!972642) b_and!30887 (not b!972648))
(check-sat b_and!30887 (not b_next!19323))
